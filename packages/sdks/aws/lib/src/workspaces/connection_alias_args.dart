// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_alias_timeouts.dart';

/// {@template pulumi_workspaces_connection_alias_connection_alias_args_doc}
/// The set of arguments for ConnectionAlias.
/// {@endtemplate}
/// {@macro pulumi_workspaces_connection_alias_connection_alias_args_doc}
class ConnectionAliasArgs {
  /// The connection string specified for the connection alias. The connection string must be in the form of a fully qualified domain name (FQDN), such as www.example.com.
  final pulumi.Input<String> connectionString;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A map of tags assigned to the WorkSpaces Connection Alias. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<ConnectionAliasTimeouts>? timeouts;

  /// Creates a new [ConnectionAliasArgs].
  /// [connectionString] The connection string specified for the connection alias. The connection string must be in the form of a fully qualified domain name (FQDN), such as www.example.com.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags assigned to the WorkSpaces Connection Alias. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [timeouts] Optional.
  ConnectionAliasArgs({
    required pulumi.Output<String> connectionString,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<ConnectionAliasTimeouts>? timeouts,
  }) :
      connectionString = pulumi.Input.asInput<String>(connectionString),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      timeouts = pulumi.Input.asOptionalInput<ConnectionAliasTimeouts>(timeouts);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionString': connectionString,
      'region': ?region,
      'tags': ?tags,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<ConnectionAliasTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory ConnectionAliasArgs.fromMap(Map<String, dynamic> map) {
    return ConnectionAliasArgs(
      connectionString: pulumi.Output.create<String>(map['connectionString'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<ConnectionAliasTimeouts>(ConnectionAliasTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
    );
  }
}

