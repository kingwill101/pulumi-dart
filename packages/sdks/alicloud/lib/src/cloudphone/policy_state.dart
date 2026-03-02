// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_net_redirect_policy.dart';

/// Input properties used for looking up and filtering Policy resources.
class PolicyState {
  /// Whether to turn on local camera redirection.
  final pulumi.Input<String>? cameraRedirect;
  /// Clipboard permissions.
  final pulumi.Input<String>? clipboard;
  /// Whether to lock the resolution.
  final pulumi.Input<String>? lockResolution;
  /// Network redirection. See `net_redirect_policy` below.
  final pulumi.Input<PolicyNetRedirectPolicy>? netRedirectPolicy;
  /// The policy name.
  final pulumi.Input<String>? policyGroupName;
  /// The height of the resolution. Unit: Pixels.
  final pulumi.Input<int>? resolutionHeight;
  /// The width of the resolution. Unit: Pixels.
  final pulumi.Input<int>? resolutionWidth;

  /// Creates a new [PolicyState].
  /// [cameraRedirect] Whether to turn on local camera redirection.
  /// [clipboard] Clipboard permissions.
  /// [lockResolution] Whether to lock the resolution.
  /// [netRedirectPolicy] Network redirection. See `net_redirect_policy` below.
  /// [policyGroupName] The policy name.
  /// [resolutionHeight] The height of the resolution. Unit: Pixels.
  /// [resolutionWidth] The width of the resolution. Unit: Pixels.
  PolicyState({
    this.cameraRedirect,
    this.clipboard,
    this.lockResolution,
    this.netRedirectPolicy,
    this.policyGroupName,
    this.resolutionHeight,
    this.resolutionWidth,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cameraRedirect': ?cameraRedirect,
      'clipboard': ?clipboard,
      'lockResolution': ?lockResolution,
      'netRedirectPolicy': ?pulumi.Input.mapOptionalInputValue<PolicyNetRedirectPolicy, Map<String, dynamic>>(netRedirectPolicy, (value) => value.toMap()),
      'policyGroupName': ?policyGroupName,
      'resolutionHeight': ?resolutionHeight,
      'resolutionWidth': ?resolutionWidth,
    };
  }

  factory PolicyState.fromMap(Map<String, dynamic> map) {
    return PolicyState(
      cameraRedirect: map['cameraRedirect'] == null ? null : (map['cameraRedirect'] as String).input(),
      clipboard: map['clipboard'] == null ? null : (map['clipboard'] as String).input(),
      lockResolution: map['lockResolution'] == null ? null : (map['lockResolution'] as String).input(),
      netRedirectPolicy: map['netRedirectPolicy'] == null ? null : (PolicyNetRedirectPolicy.fromMap((map['netRedirectPolicy'] as Map).cast<String, dynamic>())).input(),
      policyGroupName: map['policyGroupName'] == null ? null : (map['policyGroupName'] as String).input(),
      resolutionHeight: map['resolutionHeight'] == null ? null : (map['resolutionHeight'] as int).input(),
      resolutionWidth: map['resolutionWidth'] == null ? null : (map['resolutionWidth'] as int).input(),
    );
  }
}

