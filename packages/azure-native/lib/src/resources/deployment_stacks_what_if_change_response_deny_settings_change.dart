// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'deny_settings_response.dart';
import 'deployment_stacks_what_if_property_change_response.dart';

/// Predicted changes to the deployment stack deny settings.
class DeploymentStacksWhatIfChangeResponseDenySettingsChange {
  /// The predicted value after the deployment is executed.
  final DenySettingsResponse? after;
  /// The predicted value before the deployment is executed.
  final DenySettingsResponse? before;
  /// The predicted changes to the properties."
  final List<DeploymentStacksWhatIfPropertyChangeResponse>? delta;

  /// Creates a new [DeploymentStacksWhatIfChangeResponseDenySettingsChange].
  /// [after] The predicted value after the deployment is executed.
  /// [before] The predicted value before the deployment is executed.
  /// [delta] The predicted changes to the properties."
  DeploymentStacksWhatIfChangeResponseDenySettingsChange({
    this.after,
    this.before,
    this.delta,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'after': ?after == null ? null : after!.toMap(),
      'before': ?before == null ? null : before!.toMap(),
      'delta': ?delta == null ? null : pulumi.Input.encodeList<DeploymentStacksWhatIfPropertyChangeResponse, Map<String, dynamic>>(delta!, (value) => value.toMap()),
    };
  }

  factory DeploymentStacksWhatIfChangeResponseDenySettingsChange.fromMap(Map<String, dynamic> map) {
    return DeploymentStacksWhatIfChangeResponseDenySettingsChange(
      after: map['after'] == null ? null : DenySettingsResponse.fromMap((map['after'] as Map).cast<String, dynamic>()),
      before: map['before'] == null ? null : DenySettingsResponse.fromMap((map['before'] as Map).cast<String, dynamic>()),
      delta: map['delta'] == null ? null : pulumi.Input.decodeList<DeploymentStacksWhatIfPropertyChangeResponse>(map['delta'], (value) => DeploymentStacksWhatIfPropertyChangeResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

