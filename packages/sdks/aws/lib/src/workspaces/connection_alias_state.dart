// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_alias_timeouts.dart';

/// Input properties used for looking up and filtering ConnectionAlias resources.
class ConnectionAliasState {
  /// The connection string specified for the connection alias. The connection string must be in the form of a fully qualified domain name (FQDN), such as www.example.com.
  final pulumi.Input<String?>? connectionString;
  /// The identifier of the Amazon Web Services account that owns the connection alias.
  final pulumi.Input<String?>? ownerAccountId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// The current state of the connection alias.
  final pulumi.Input<String?>? state;
  /// A map of tags assigned to the WorkSpaces Connection Alias. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;
  final pulumi.Input<ConnectionAliasTimeouts?>? timeouts;

  /// Creates a new [ConnectionAliasState].
  /// [connectionString] The connection string specified for the connection alias. The connection string must be in the form of a fully qualified domain name (FQDN), such as www.example.com.
  /// [ownerAccountId] The identifier of the Amazon Web Services account that owns the connection alias.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [state] The current state of the connection alias.
  /// [tags] A map of tags assigned to the WorkSpaces Connection Alias. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [timeouts] Optional.
  const ConnectionAliasState({
    this.connectionString,
    this.ownerAccountId,
    this.region,
    this.state,
    this.tags,
    this.tagsAll,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionString': ?connectionString,
      'ownerAccountId': ?ownerAccountId,
      'region': ?region,
      'state': ?state,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<ConnectionAliasTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory ConnectionAliasState.fromMap(Map<String, dynamic> map) {
    return ConnectionAliasState(
      connectionString: (() { final guardedValue = map['connectionString']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ownerAccountId: (() { final guardedValue = map['ownerAccountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectionAliasTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
