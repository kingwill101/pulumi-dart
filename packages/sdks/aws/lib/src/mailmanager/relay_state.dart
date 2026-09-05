// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'relay_authentication.dart';

/// Input properties used for looking up and filtering Relay resources.
class RelayState {
  /// ARN of the relay.
  final pulumi.Input<String?>? arn;
  /// Authentication configuration for the relay. See `authentication` Block.
  final pulumi.Input<RelayAuthentication?>? authentication;
  /// Timestamp when the relay was created.
  final pulumi.Input<String?>? createdTimestamp;
  /// Timestamp when the relay was last modified.
  final pulumi.Input<String?>? lastModifiedTimestamp;
  /// Name of the relay.
  final pulumi.Input<String?>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Hostname of the SMTP server.
  final pulumi.Input<String?>? serverName;
  /// Port of the SMTP server.
  ///
  /// The following arguments are optional:
  final pulumi.Input<int?>? serverPort;
  /// Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;

  /// Creates a new [RelayState].
  /// [arn] ARN of the relay.
  /// [authentication] Authentication configuration for the relay. See `authentication` Block.
  /// [createdTimestamp] Timestamp when the relay was created.
  /// [lastModifiedTimestamp] Timestamp when the relay was last modified.
  /// [name] Name of the relay.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [serverName] Hostname of the SMTP server.
  /// [serverPort] Port of the SMTP server.
  /// [tags] Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  const RelayState({
    this.arn,
    this.authentication,
    this.createdTimestamp,
    this.lastModifiedTimestamp,
    this.name,
    this.region,
    this.serverName,
    this.serverPort,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'authentication': ?pulumi.Input.mapOptionalInputValue<RelayAuthentication, Map<String, dynamic>>(authentication, (value) => value.toMap()),
      'createdTimestamp': ?createdTimestamp,
      'lastModifiedTimestamp': ?lastModifiedTimestamp,
      'name': ?name,
      'region': ?region,
      'serverName': ?serverName,
      'serverPort': ?serverPort,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory RelayState.fromMap(Map<String, dynamic> map) {
    return RelayState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      authentication: (() { final guardedValue = map['authentication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RelayAuthentication.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      createdTimestamp: (() { final guardedValue = map['createdTimestamp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastModifiedTimestamp: (() { final guardedValue = map['lastModifiedTimestamp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serverName: (() { final guardedValue = map['serverName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serverPort: (() { final guardedValue = map['serverPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
