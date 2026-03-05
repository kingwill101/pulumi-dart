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
      isEditable: (() { final guardedValue = map['isEditable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      sourcePaths: (() { final guardedValue = map['sourcePaths']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      sourceSize: (() { final guardedValue = map['sourceSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageProfile: (() { final guardedValue = map['storageProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TargetStorageProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

