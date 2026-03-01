// ignore_for_file: unused_element, unnecessary_cast

import 'target_storage_profile_response.dart';

/// WebApplication directory structure.
class WebApplicationDirectoryResponse {
  /// Gets the unique id corresponding to the application directory.
  final String id;
  /// Gets or sets a value indicating whether the directory object is editable.
  /// True when the directory is added as an optional directory, false when discovery is done
  /// manually.
  final bool? isEditable;
  /// Gets or sets the paths of the directory on the source machine.
  final List<String>? sourcePaths;
  /// Gets or sets the size of the directory on the source machine.
  final String? sourceSize;
  /// Storage profile for the directory on the target container.
  final TargetStorageProfileResponse? storageProfile;

  /// Creates a new [WebApplicationDirectoryResponse].
  /// [id] Gets the unique id corresponding to the application directory.
  /// [isEditable] Gets or sets a value indicating whether the directory object is editable.
  /// [sourcePaths] Gets or sets the paths of the directory on the source machine.
  /// [sourceSize] Gets or sets the size of the directory on the source machine.
  /// [storageProfile] Storage profile for the directory on the target container.
  WebApplicationDirectoryResponse({
    required this.id,
    this.isEditable,
    this.sourcePaths,
    this.sourceSize,
    this.storageProfile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'isEditable': ?isEditable,
      'sourcePaths': ?sourcePaths,
      'sourceSize': ?sourceSize,
      'storageProfile': ?storageProfile == null ? null : storageProfile!.toMap(),
    };
  }

  factory WebApplicationDirectoryResponse.fromMap(Map<String, dynamic> map) {
    return WebApplicationDirectoryResponse(
      id: map['id'] as String,
      isEditable: map['isEditable'] == null ? null : map['isEditable'] as bool,
      sourcePaths: map['sourcePaths'] == null ? null : (map['sourcePaths'] as List).cast<String>(),
      sourceSize: map['sourceSize'] == null ? null : map['sourceSize'] as String,
      storageProfile: map['storageProfile'] == null ? null : TargetStorageProfileResponse.fromMap((map['storageProfile'] as Map).cast<String, dynamic>()),
    );
  }
}

