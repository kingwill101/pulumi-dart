// ignore_for_file: unused_element, unnecessary_cast

import 'module_error_info_response.dart';

/// Result data returned by getPython2Package.
class GetPython2PackageResult {
  /// Gets the activity count of the module.
  final int? activityCount;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Gets the creation time.
  final String? creationTime;
  /// Gets or sets the description.
  final String? description;
  /// Gets the error info of the module.
  final ModuleErrorInfoResponse? error;
  /// Gets the etag of the resource.
  final String? etag;
  /// Fully qualified resource Id for the resource
  final String id;
  /// Gets type of module, if its composite or not.
  final bool? isComposite;
  /// Gets the isGlobal flag of the module.
  final bool? isGlobal;
  /// Gets the last modified time.
  final String? lastModifiedTime;
  /// The Azure Region where the resource lives
  final String? location;
  /// The name of the resource
  final String name;
  /// Gets the provisioning state of the module.
  final String? provisioningState;
  /// Gets the size in bytes of the module.
  final double? sizeInBytes;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource.
  final String type;
  /// Gets the version of the module.
  final String? version;

  /// Creates a new [GetPython2PackageResult].
  /// [activityCount] Gets the activity count of the module.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [creationTime] Gets the creation time.
  /// [description] Gets or sets the description.
  /// [error] Gets the error info of the module.
  /// [etag] Gets the etag of the resource.
  /// [id] Fully qualified resource Id for the resource
  /// [isComposite] Gets type of module, if its composite or not.
  /// [isGlobal] Gets the isGlobal flag of the module.
  /// [lastModifiedTime] Gets the last modified time.
  /// [location] The Azure Region where the resource lives
  /// [name] The name of the resource
  /// [provisioningState] Gets the provisioning state of the module.
  /// [sizeInBytes] Gets the size in bytes of the module.
  /// [tags] Resource tags.
  /// [type] The type of the resource.
  /// [version] Gets the version of the module.
  GetPython2PackageResult({
    this.activityCount,
    required this.azureApiVersion,
    this.creationTime,
    this.description,
    this.error,
    this.etag,
    required this.id,
    this.isComposite,
    this.isGlobal,
    this.lastModifiedTime,
    this.location,
    required this.name,
    this.provisioningState,
    this.sizeInBytes,
    this.tags,
    required this.type,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activityCount': ?activityCount,
      'azureApiVersion': azureApiVersion,
      'creationTime': ?creationTime,
      'description': ?description,
      'error': ?error == null ? null : error!.toMap(),
      'etag': ?etag,
      'id': id,
      'isComposite': ?isComposite,
      'isGlobal': ?isGlobal,
      'lastModifiedTime': ?lastModifiedTime,
      'location': ?location,
      'name': name,
      'provisioningState': ?provisioningState,
      'sizeInBytes': ?sizeInBytes,
      'tags': ?tags,
      'type': type,
      'version': ?version,
    };
  }

  factory GetPython2PackageResult.fromMap(Map<String, dynamic> map) {
    return GetPython2PackageResult(
      activityCount: map['activityCount'] == null ? null : map['activityCount'] as int,
      azureApiVersion: map['azureApiVersion'] as String,
      creationTime: map['creationTime'] == null ? null : map['creationTime'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      error: map['error'] == null ? null : ModuleErrorInfoResponse.fromMap((map['error'] as Map).cast<String, dynamic>()),
      etag: map['etag'] == null ? null : map['etag'] as String,
      id: map['id'] as String,
      isComposite: map['isComposite'] == null ? null : map['isComposite'] as bool,
      isGlobal: map['isGlobal'] == null ? null : map['isGlobal'] as bool,
      lastModifiedTime: map['lastModifiedTime'] == null ? null : map['lastModifiedTime'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] == null ? null : map['provisioningState'] as String,
      sizeInBytes: map['sizeInBytes'] == null ? null : map['sizeInBytes'] as double,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      type: map['type'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

