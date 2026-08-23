// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'relay_authentication.dart';

/// {@template pulumi_mailmanager_relay_relay_args_doc}
/// The set of arguments for Relay.
/// {@endtemplate}
/// {@macro pulumi_mailmanager_relay_relay_args_doc}
class RelayArgs {
  /// Authentication configuration for the relay. See `authentication` Block.
  final pulumi.Input<RelayAuthentication>? authentication;
  /// Name of the relay.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Hostname of the SMTP server.
  final pulumi.Input<String> serverName;
  /// Port of the SMTP server.
  ///
  /// The following arguments are optional:
  final pulumi.Input<int> serverPort;
  /// Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [RelayArgs].
  /// [authentication] Authentication configuration for the relay. See `authentication` Block.
  /// [name] Name of the relay.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [serverName] Hostname of the SMTP server.
  /// [serverPort] Port of the SMTP server.
  /// [tags] Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  const RelayArgs({
    this.authentication,
    this.name,
    this.region,
    required this.serverName,
    required this.serverPort,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authentication': ?pulumi.Input.mapOptionalInputValue<RelayAuthentication, Map<String, dynamic>>(authentication, (value) => value.toMap()),
      'name': ?name,
      'region': ?region,
      'serverName': serverName,
      'serverPort': serverPort,
      'tags': ?tags,
    };
  }

  factory RelayArgs.fromMap(Map<String, dynamic> map) {
    return RelayArgs(
      authentication: (() { final guardedValue = map['authentication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RelayAuthentication.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serverName: pulumi.Input.fromValue(map['serverName'] as String),
      serverPort: pulumi.Input.fromValue(map['serverPort'] as int),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
