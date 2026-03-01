// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_net_redirect_policy.dart';

/// {@template pulumi_cloudphone_policy_policy_args_doc}
/// The set of arguments for Policy.
/// {@endtemplate}
/// {@macro pulumi_cloudphone_policy_policy_args_doc}
class PolicyArgs {
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

  /// Creates a new [PolicyArgs].
  /// [cameraRedirect] Whether to turn on local camera redirection.
  /// [clipboard] Clipboard permissions.
  /// [lockResolution] Whether to lock the resolution.
  /// [netRedirectPolicy] Network redirection. See `net_redirect_policy` below.
  /// [policyGroupName] The policy name.
  /// [resolutionHeight] The height of the resolution. Unit: Pixels.
  /// [resolutionWidth] The width of the resolution. Unit: Pixels.
  PolicyArgs({
    pulumi.Output<String>? cameraRedirect,
    pulumi.Output<String>? clipboard,
    pulumi.Output<String>? lockResolution,
    pulumi.Output<PolicyNetRedirectPolicy>? netRedirectPolicy,
    pulumi.Output<String>? policyGroupName,
    pulumi.Output<int>? resolutionHeight,
    pulumi.Output<int>? resolutionWidth,
  }) :
      cameraRedirect = pulumi.Input.asOptionalInput<String>(cameraRedirect),
      clipboard = pulumi.Input.asOptionalInput<String>(clipboard),
      lockResolution = pulumi.Input.asOptionalInput<String>(lockResolution),
      netRedirectPolicy = pulumi.Input.asOptionalInput<PolicyNetRedirectPolicy>(netRedirectPolicy),
      policyGroupName = pulumi.Input.asOptionalInput<String>(policyGroupName),
      resolutionHeight = pulumi.Input.asOptionalInput<int>(resolutionHeight),
      resolutionWidth = pulumi.Input.asOptionalInput<int>(resolutionWidth);

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

  factory PolicyArgs.fromMap(Map<String, dynamic> map) {
    return PolicyArgs(
      cameraRedirect: map['cameraRedirect'] == null ? null : pulumi.Output.create<String>(map['cameraRedirect'] as String),
      clipboard: map['clipboard'] == null ? null : pulumi.Output.create<String>(map['clipboard'] as String),
      lockResolution: map['lockResolution'] == null ? null : pulumi.Output.create<String>(map['lockResolution'] as String),
      netRedirectPolicy: map['netRedirectPolicy'] == null ? null : pulumi.Output.create<PolicyNetRedirectPolicy>(PolicyNetRedirectPolicy.fromMap((map['netRedirectPolicy'] as Map).cast<String, dynamic>())),
      policyGroupName: map['policyGroupName'] == null ? null : pulumi.Output.create<String>(map['policyGroupName'] as String),
      resolutionHeight: map['resolutionHeight'] == null ? null : pulumi.Output.create<int>(map['resolutionHeight'] as int),
      resolutionWidth: map['resolutionWidth'] == null ? null : pulumi.Output.create<int>(map['resolutionWidth'] as int),
    );
  }
}

