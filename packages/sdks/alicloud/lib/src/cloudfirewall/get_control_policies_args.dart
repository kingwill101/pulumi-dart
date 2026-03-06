// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudfirewall_get_control_policies_get_control_policies_args_doc}
/// Arguments for getControlPolicies.
/// {@endtemplate}
/// {@macro pulumi_cloudfirewall_get_control_policies_get_control_policies_args_doc}
class GetControlPoliciesArgs {
  /// The action that Cloud Firewall performs on the traffic. Valid values: `accept`, `drop`, `log`.
  final pulumi.Input<String>? aclAction;
  /// The unique ID of the access control policy.
  final pulumi.Input<String>? aclUuid;
  /// The description of the access control policy.
  final pulumi.Input<String>? description;
  /// The destination address defined in the access control policy.
  final pulumi.Input<String>? destination;
  /// The direction of the traffic to which the access control policy applies. Valid values: `in`, `out`.
  final pulumi.Input<String> direction;
  /// The IP version of the address in the access control policy.
  final pulumi.Input<String>? ipVersion;
  /// The language of the content within the response. Valid values: `en`, `zh`.
  final pulumi.Input<String>? lang;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The type of the protocol in the access control policy. Valid values: If `direction` is  `in`, the valid value is `ANY`. If `direction` is `out`, the valid values are `ANY`, `TCP`, `UDP`, `ICMP`.
  final pulumi.Input<String>? proto;
  /// The source address in the access control policy.
  final pulumi.Input<String>? source;

  /// Creates a new [GetControlPoliciesArgs].
  /// [aclAction] The action that Cloud Firewall performs on the traffic. Valid values: `accept`, `drop`, `log`.
  /// [aclUuid] The unique ID of the access control policy.
  /// [description] The description of the access control policy.
  /// [destination] The destination address defined in the access control policy.
  /// [direction] The direction of the traffic to which the access control policy applies. Valid values: `in`, `out`.
  /// [ipVersion] The IP version of the address in the access control policy.
  /// [lang] The language of the content within the response. Valid values: `en`, `zh`.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [proto] The type of the protocol in the access control policy. Valid values: If `direction` is  `in`, the valid value is `ANY`. If `direction` is `out`, the valid values are `ANY`, `TCP`, `UDP`, `ICMP`.
  /// [source] The source address in the access control policy.
  const GetControlPoliciesArgs({
    this.aclAction,
    this.aclUuid,
    this.description,
    this.destination,
    required this.direction,
    this.ipVersion,
    this.lang,
    this.outputFile,
    this.proto,
    this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aclAction': ?aclAction,
      'aclUuid': ?aclUuid,
      'description': ?description,
      'destination': ?destination,
      'direction': direction,
      'ipVersion': ?ipVersion,
      'lang': ?lang,
      'outputFile': ?outputFile,
      'proto': ?proto,
      'source': ?source,
    };
  }

  factory GetControlPoliciesArgs.fromMap(Map<String, dynamic> map) {
    return GetControlPoliciesArgs(
      aclAction: (() { final guardedValue = map['aclAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      aclUuid: (() { final guardedValue = map['aclUuid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destination: (() { final guardedValue = map['destination']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      direction: pulumi.Input.fromValue(map['direction'] as String),
      ipVersion: (() { final guardedValue = map['ipVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lang: (() { final guardedValue = map['lang']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      proto: (() { final guardedValue = map['proto']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

