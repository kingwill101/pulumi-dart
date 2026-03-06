// ignore_for_file: unused_element, unnecessary_cast

import 'module_error_info_response.dart';

/// Result data returned by getModule.
class GetModuleResult {
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

  /// Creates a new [GetModuleResult].
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
  const GetModuleResult({
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
      'error': ?error?.toMap(),
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

  factory GetModuleResult.fromMap(Map<String, dynamic> map) {
    return GetModuleResult(
      activityCount: (() { final guardedValue = map['activityCount']; if (guardedValue == null) return null; return guardedValue as int; })(),
      azureApiVersion: map['azureApiVersion'] as String,
      creationTime: (() { final guardedValue = map['creationTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      error: (() { final guardedValue = map['error']; if (guardedValue == null) return null; return ModuleErrorInfoResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      isComposite: (() { final guardedValue = map['isComposite']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      isGlobal: (() { final guardedValue = map['isGlobal']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      lastModifiedTime: (() { final guardedValue = map['lastModifiedTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: map['name'] as String,
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sizeInBytes: (() { final guardedValue = map['sizeInBytes']; if (guardedValue == null) return null; return guardedValue as double; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

