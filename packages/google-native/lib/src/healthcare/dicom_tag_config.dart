// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'action.dart';
import 'dicom_tag_config_profile_type.dart';
import 'options.dart';

/// Specifies the parameters needed for the de-identification of DICOM stores.
class DicomTagConfig {
  /// Specifies custom tag selections and `Actions` to apply to them. Overrides `options` and `profile`. Conflicting `Actions` are applied in the order given.
  final List<Action>? actions;

  /// Specifies additional options to apply, overriding the base `profile`.
  final Options? options;

  /// Base profile type for handling DICOM tags.
  final DicomTagConfigProfileType? profileType;

  /// Creates a new [DicomTagConfig].
  /// [actions] Specifies custom tag selections and `Actions` to apply to them. Overrides `options` and `profile`. Conflicting `Actions` are applied in the order given.
  /// [options] Specifies additional options to apply, overriding the base `profile`.
  /// [profileType] Base profile type for handling DICOM tags.
  DicomTagConfig({this.actions, this.options, this.profileType});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': ?actions == null
          ? null
          : pulumi.Input.encodeList<Action, Map<String, dynamic>>(
              actions!,
              (value) => value.toMap(),
            ),
      'options': ?options == null ? null : options!.toMap(),
      'profileType': ?profileType == null ? null : profileType!.value,
    };
  }

  factory DicomTagConfig.fromMap(Map<String, dynamic> map) {
    return DicomTagConfig(
      actions: map['actions'] == null
          ? null
          : pulumi.Input.decodeList<Action>(
              map['actions'],
              (value) => Action.fromMap((value as Map).cast<String, dynamic>()),
            ),
      options: map['options'] == null
          ? null
          : Options.fromMap((map['options'] as Map).cast<String, dynamic>()),
      profileType: map['profileType'] == null
          ? null
          : DicomTagConfigProfileType.fromValue(map['profileType'] as String),
    );
  }
}
