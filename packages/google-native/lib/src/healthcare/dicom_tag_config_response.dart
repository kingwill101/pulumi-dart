// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'action_response.dart';
import 'options_response.dart';

/// Specifies the parameters needed for the de-identification of DICOM stores.
class DicomTagConfigResponse {
  /// Specifies custom tag selections and `Actions` to apply to them. Overrides `options` and `profile`. Conflicting `Actions` are applied in the order given.
  final List<ActionResponse> actions;

  /// Specifies additional options to apply, overriding the base `profile`.
  final OptionsResponse options;

  /// Base profile type for handling DICOM tags.
  final String profileType;

  /// Creates a new [DicomTagConfigResponse].
  /// [actions] Specifies custom tag selections and `Actions` to apply to them. Overrides `options` and `profile`. Conflicting `Actions` are applied in the order given.
  /// [options] Specifies additional options to apply, overriding the base `profile`.
  /// [profileType] Base profile type for handling DICOM tags.
  DicomTagConfigResponse({
    required this.actions,
    required this.options,
    required this.profileType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['actions'] =
        pulumi.Input.encodeList<ActionResponse, Map<String, dynamic>>(
            actions, (value) => value.toMap());
    map['options'] = options.toMap();
    map['profileType'] = profileType;
    return map;
  }

  factory DicomTagConfigResponse.fromMap(Map<String, dynamic> map) {
    return DicomTagConfigResponse(
      actions: pulumi.Input.decodeList<ActionResponse>(
          map['actions'],
          (value) =>
              ActionResponse.fromMap((value as Map).cast<String, dynamic>())),
      options: OptionsResponse.fromMap(
          (map['options'] as Map).cast<String, dynamic>()),
      profileType: map['profileType'] as String,
    );
  }
}
