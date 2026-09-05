// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'listener_default_action.dart';

/// Input properties used for looking up and filtering Listener resources.
class ListenerState {
  /// ARN of the listener.
  final pulumi.Input<String?>? arn;
  /// Date and time that the listener was created, specified in ISO-8601 format.
  final pulumi.Input<String?>? createdAt;
  /// Default action block for the default listener rule. Default action blocks are defined below.
  final pulumi.Input<ListenerDefaultAction?>? defaultAction;
  /// Date and time that the listener was last updated, specified in ISO-8601 format.
  final pulumi.Input<String?>? lastUpdatedAt;
  /// Standalone ID of the listener, e.g. `listener-0a1b2c3d4e5f6g`.
  final pulumi.Input<String?>? listenerId;
  /// Name of the listener. A listener name must be unique within a service. Valid characters are a-z, 0-9, and hyphens (-). You can't use a hyphen as the first or last character, or immediately after another hyphen.
  final pulumi.Input<String?>? name;
  /// Listener port. You can specify a value from 1 to 65535. If `port` is not specified and `protocol` is HTTP, the value will default to 80. If `port` is not specified and `protocol` is HTTPS, the value will default to 443.
  final pulumi.Input<int?>? port;
  /// Protocol for the listener. Supported values are `HTTP`, `HTTPS` or `TLS_PASSTHROUGH`
  final pulumi.Input<String?>? protocol;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// ARN of the VPC Lattice service. You must include either the `serviceArn` or `serviceIdentifier` arguments.
  final pulumi.Input<String?>? serviceArn;
  /// ID of the VPC Lattice service. You must include either the `serviceArn` or `serviceIdentifier` arguments.
  /// &gt; **NOTE:** You must specify one of the following arguments: `serviceArn` or `serviceIdentifier`.
  final pulumi.Input<String?>? serviceIdentifier;
  /// Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  final pulumi.Input<Map<String, String>?>? tagsAll;

  /// Creates a new [ListenerState].
  /// [arn] ARN of the listener.
  /// [createdAt] Date and time that the listener was created, specified in ISO-8601 format.
  /// [defaultAction] Default action block for the default listener rule. Default action blocks are defined below.
  /// [lastUpdatedAt] Date and time that the listener was last updated, specified in ISO-8601 format.
  /// [listenerId] Standalone ID of the listener, e.g. `listener-0a1b2c3d4e5f6g`.
  /// [name] Name of the listener. A listener name must be unique within a service. Valid characters are a-z, 0-9, and hyphens (-). You can't use a hyphen as the first or last character, or immediately after another hyphen.
  /// [port] Listener port. You can specify a value from 1 to 65535. If `port` is not specified and `protocol` is HTTP, the value will default to 80. If `port` is not specified and `protocol` is HTTPS, the value will default to 443.
  /// [protocol] Protocol for the listener. Supported values are `HTTP`, `HTTPS` or `TLS_PASSTHROUGH`
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [serviceArn] ARN of the VPC Lattice service. You must include either the `serviceArn` or `serviceIdentifier` arguments.
  /// [serviceIdentifier] ID of the VPC Lattice service. You must include either the `serviceArn` or `serviceIdentifier` arguments.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Optional.
  const ListenerState({
    this.arn,
    this.createdAt,
    this.defaultAction,
    this.lastUpdatedAt,
    this.listenerId,
    this.name,
    this.port,
    this.protocol,
    this.region,
    this.serviceArn,
    this.serviceIdentifier,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'createdAt': ?createdAt,
      'defaultAction': ?pulumi.Input.mapOptionalInputValue<ListenerDefaultAction, Map<String, dynamic>>(defaultAction, (value) => value.toMap()),
      'lastUpdatedAt': ?lastUpdatedAt,
      'listenerId': ?listenerId,
      'name': ?name,
      'port': ?port,
      'protocol': ?protocol,
      'region': ?region,
      'serviceArn': ?serviceArn,
      'serviceIdentifier': ?serviceIdentifier,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory ListenerState.fromMap(Map<String, dynamic> map) {
    return ListenerState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      defaultAction: (() { final guardedValue = map['defaultAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ListenerDefaultAction.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      lastUpdatedAt: (() { final guardedValue = map['lastUpdatedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      listenerId: (() { final guardedValue = map['listenerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      protocol: (() { final guardedValue = map['protocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceArn: (() { final guardedValue = map['serviceArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceIdentifier: (() { final guardedValue = map['serviceIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
