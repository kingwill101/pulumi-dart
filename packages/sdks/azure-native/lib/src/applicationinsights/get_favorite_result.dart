// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getFavorite.
class GetFavoriteResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Favorite category, as defined by the user at creation time.
  final String? category;
  /// Configuration of this particular favorite, which are driven by the Azure portal UX. Configuration data is a string containing valid JSON
  final String? config;
  /// Internally assigned unique id of the favorite definition.
  final String favoriteId;
  /// Enum indicating if this favorite definition is owned by a specific user or is shared between all users with access to the Application Insights component.
  final String? favoriteType;
  /// Flag denoting wether or not this favorite was generated from a template.
  final bool? isGeneratedFromTemplate;
  /// The user-defined name of the favorite.
  final String? name;
  /// The source of the favorite definition.
  final String? sourceType;
  /// A list of 0 or more tags that are associated with this favorite definition
  final List<String>? tags;
  /// Date and time in UTC of the last modification that was made to this favorite definition.
  final String timeModified;
  /// Unique user id of the specific user that owns this favorite.
  final String userId;
  /// This instance's version of the data model. This can change as new features are added that can be marked favorite. Current examples include MetricsExplorer (ME) and Search.
  final String? version;

  /// Creates a new [GetFavoriteResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [category] Favorite category, as defined by the user at creation time.
  /// [config] Configuration of this particular favorite, which are driven by the Azure portal UX. Configuration data is a string containing valid JSON
  /// [favoriteId] Internally assigned unique id of the favorite definition.
  /// [favoriteType] Enum indicating if this favorite definition is owned by a specific user or is shared between all users with access to the Application Insights component.
  /// [isGeneratedFromTemplate] Flag denoting wether or not this favorite was generated from a template.
  /// [name] The user-defined name of the favorite.
  /// [sourceType] The source of the favorite definition.
  /// [tags] A list of 0 or more tags that are associated with this favorite definition
  /// [timeModified] Date and time in UTC of the last modification that was made to this favorite definition.
  /// [userId] Unique user id of the specific user that owns this favorite.
  /// [version] This instance's version of the data model. This can change as new features are added that can be marked favorite. Current examples include MetricsExplorer (ME) and Search.
  const GetFavoriteResult({
    required this.azureApiVersion,
    this.category,
    this.config,
    required this.favoriteId,
    this.favoriteType,
    this.isGeneratedFromTemplate,
    this.name,
    this.sourceType,
    this.tags,
    required this.timeModified,
    required this.userId,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'category': ?category,
      'config': ?config,
      'favoriteId': favoriteId,
      'favoriteType': ?favoriteType,
      'isGeneratedFromTemplate': ?isGeneratedFromTemplate,
      'name': ?name,
      'sourceType': ?sourceType,
      'tags': ?tags,
      'timeModified': timeModified,
      'userId': userId,
      'version': ?version,
    };
  }

  factory GetFavoriteResult.fromMap(Map<String, dynamic> map) {
    return GetFavoriteResult(
      azureApiVersion: map['azureApiVersion'] as String,
      category: (() { final guardedValue = map['category']; if (guardedValue == null) return null; return guardedValue as String; })(),
      config: (() { final guardedValue = map['config']; if (guardedValue == null) return null; return guardedValue as String; })(),
      favoriteId: map['favoriteId'] as String,
      favoriteType: (() { final guardedValue = map['favoriteType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      isGeneratedFromTemplate: (() { final guardedValue = map['isGeneratedFromTemplate']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sourceType: (() { final guardedValue = map['sourceType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      timeModified: map['timeModified'] as String,
      userId: map['userId'] as String,
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

