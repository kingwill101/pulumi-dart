// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'target_storage_profile_response.dart';

/// WebApplication directory structure.
class WebApplicationDirectoryResponse {
  /// Gets the unique id corresponding to the application directory.
  final pulumi.Input<String> id;

  /// Gets or sets a value indicating whether the directory object is editable.
  /// True when the directory is added as an optional directory, false when discovery is done
  /// manually.
  final pulumi.Input<bool>? isEditable;

  /// Gets or sets the paths of the directory on the source machine.
  final pulumi.Input<List<String>>? sourcePaths;

  /// Gets or sets the size of the directory on the source machine.
  final pulumi.Input<String>? sourceSize;

  /// Storage profile for the directory on the target container.
  final pulumi.Input<TargetStorageProfileResponse>? storageProfile;

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
      'storageProfile':
          ?pulumi.Input.mapOptionalInputValue<
            TargetStorageProfileResponse,
            Map<String, dynamic>
          >(storageProfile, (value) => value.toMap()),
    };
  }

  factory WebApplicationDirectoryResponse.fromMap(Map<String, dynamic> map) {
    return WebApplicationDirectoryResponse(
      id: pulumi.Input.fromValue(map['id'] as String),
      isEditable: (() {
        final guardedValue = map['isEditable'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      sourcePaths: (() {
        final guardedValue = map['sourcePaths'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      sourceSize: (() {
        final guardedValue = map['sourceSize'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      storageProfile: (() {
        final guardedValue = map['storageProfile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          TargetStorageProfileResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
