// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_alias_timeouts.dart';

/// Input properties used for looking up and filtering ConnectionAlias resources.
class ConnectionAliasState {
  /// The connection string specified for the connection alias. The connection string must be in the form of a fully qualified domain name (FQDN), such as www.example.com.
  final pulumi.Input<String>? connectionString;
  /// The identifier of the Amazon Web Services account that owns the connection alias.
  final pulumi.Input<String>? ownerAccountId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The current state of the connection alias.
  final pulumi.Input<String>? state;
  /// A map of tags assigned to the WorkSpaces Connection Alias. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  final pulumi.Input<ConnectionAliasTimeouts>? timeouts;

  /// Creates a new [ConnectionAliasState].
  /// [connectionString] The connection string specified for the connection alias. The connection string must be in the form of a fully qualified domain name (FQDN), such as www.example.com.
  /// [ownerAccountId] The identifier of the Amazon Web Services account that owns the connection alias.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [state] The current state of the connection alias.
  /// [tags] A map of tags assigned to the WorkSpaces Connection Alias. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [timeouts] Optional.
  ConnectionAliasState({
    pulumi.Output<String>? connectionString,
    pulumi.Output<String>? ownerAccountId,
    pulumi.Output<String>? region,
    pulumi.Output<String>? state,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<ConnectionAliasTimeouts>? timeouts,
  }) :
      connectionString = pulumi.Input.asOptionalInput<String>(connectionString),
      ownerAccountId = pulumi.Input.asOptionalInput<String>(ownerAccountId),
      region = pulumi.Input.asOptionalInput<String>(region),
      state = pulumi.Input.asOptionalInput<String>(state),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      timeouts = pulumi.Input.asOptionalInput<ConnectionAliasTimeouts>(timeouts);

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
      connectionString: map['connectionString'] == null ? null : pulumi.Output.create<String>(map['connectionString'] as String),
      ownerAccountId: map['ownerAccountId'] == null ? null : pulumi.Output.create<String>(map['ownerAccountId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<ConnectionAliasTimeouts>(ConnectionAliasTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
    );
  }
}

