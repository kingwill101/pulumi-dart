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
      'netRedirectPolicy':
          ?pulumi.Input.mapOptionalInputValue<
            PolicyNetRedirectPolicy,
            Map<String, dynamic>
          >(netRedirectPolicy, (value) => value.toMap()),
      'policyGroupName': ?policyGroupName,
      'resolutionHeight': ?resolutionHeight,
      'resolutionWidth': ?resolutionWidth,
    };
  }

  factory PolicyState.fromMap(Map<String, dynamic> map) {
    return PolicyState(
      cameraRedirect: (() {
        final guardedValue = map['cameraRedirect'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      clipboard: (() {
        final guardedValue = map['clipboard'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      lockResolution: (() {
        final guardedValue = map['lockResolution'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      netRedirectPolicy: (() {
        final guardedValue = map['netRedirectPolicy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PolicyNetRedirectPolicy.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      policyGroupName: (() {
        final guardedValue = map['policyGroupName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resolutionHeight: (() {
        final guardedValue = map['resolutionHeight'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      resolutionWidth: (() {
        final guardedValue = map['resolutionWidth'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
