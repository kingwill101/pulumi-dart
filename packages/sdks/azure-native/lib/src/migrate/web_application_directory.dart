// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'target_storage_profile.dart';

/// WebApplication directory structure.
class WebApplicationDirectory {
  /// Gets or sets a value indicating whether the directory object is editable.
  /// True when the directory is added as an optional directory, false when discovery is done
  /// manually.
  final pulumi.Input<bool>? isEditable;
  /// Gets or sets the paths of the directory on the source machine.
  final pulumi.Input<List<String>>? sourcePaths;
  /// Gets or sets the size of the directory on the source machine.
  final pulumi.Input<String>? sourceSize;
  /// Storage profile for the directory on the target container.
  final pulumi.Input<TargetStorageProfile>? storageProfile;

  /// Creates a new [WebApplicationDirectory].
  /// [isEditable] Gets or sets a value indicating whether the directory object is editable.
  /// [sourcePaths] Gets or sets the paths of the directory on the source machine.
  /// [sourceSize] Gets or sets the size of the directory on the source machine.
  /// [storageProfile] Storage profile for the directory on the target container.
  WebApplicationDirectory({
    this.isEditable,
    this.sourcePaths,
    this.sourceSize,
    this.storageProfile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isEditable': ?isEditable,
      'sourcePaths': ?sourcePaths,
      'sourceSize': ?sourceSize,
      'storageProfile': ?pulumi.Input.mapOptionalInputValue<TargetStorageProfile, Map<String, dynamic>>(storageProfile, (value) => value.toMap()),
    };
  }

  factory WebApplicationDirectory.fromMap(Map<String, dynamic> map) {
    return WebApplicationDirectory(
      isEditable: map['isEditable'] == null ? null : (map['isEditable'] as bool).input(),
      sourcePaths: map['sourcePaths'] == null ? null : ((map['sourcePaths'] as List).cast<String>()).input(),
      sourceSize: map['sourceSize'] == null ? null : (map['sourceSize'] as String).input(),
      storageProfile: map['storageProfile'] == null ? null : (TargetStorageProfile.fromMap((map['storageProfile'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

