// ignore_for_file: unused_element, unnecessary_cast

class GetApplicationProvidersApplicationProviderDisplayData {
  /// Description of the application provider.
  final String description;

  /// Name of the application provider.
  final String displayName;

  /// URL that points to an icon that represents the application provider.
  final String iconUrl;

  /// Creates a new [GetApplicationProvidersApplicationProviderDisplayData].
  /// [description] Description of the application provider.
  /// [displayName] Name of the application provider.
  /// [iconUrl] URL that points to an icon that represents the application provider.
  GetApplicationProvidersApplicationProviderDisplayData({
    required this.description,
    required this.displayName,
    required this.iconUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'displayName': displayName,
      'iconUrl': iconUrl,
    };
  }

  factory GetApplicationProvidersApplicationProviderDisplayData.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetApplicationProvidersApplicationProviderDisplayData(
      description: map['description'] as String,
      displayName: map['displayName'] as String,
      iconUrl: map['iconUrl'] as String,
    );
  }
}
