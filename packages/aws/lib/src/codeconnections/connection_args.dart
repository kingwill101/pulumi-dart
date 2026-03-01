// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_timeouts.dart';

/// {@template pulumi_codeconnections_connection_connection_args_doc}
/// The set of arguments for Connection.
/// {@endtemplate}
/// {@macro pulumi_codeconnections_connection_connection_args_doc}
class ConnectionArgs {
  /// The Amazon Resource Name (ARN) of the host associated with the connection. Conflicts with `provider_type`
  final pulumi.Input<String>? hostArn;

  /// The name of the connection to be created. The name must be unique in the calling AWS account. Changing `name` will create a new resource.
  final pulumi.Input<String>? name;

  /// The name of the external provider where your third-party code repository is configured. Changing `provider_type` will create a new resource. Conflicts with `host_arn`.
  final pulumi.Input<String>? providerType;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Map of key-value resource tags to associate with the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<ConnectionTimeouts>? timeouts;

  /// Creates a new [ConnectionArgs].
  /// [hostArn] The Amazon Resource Name (ARN) of the host associated with the connection. Conflicts with `provider_type`
  /// [name] The name of the connection to be created. The name must be unique in the calling AWS account. Changing `name` will create a new resource.
  /// [providerType] The name of the external provider where your third-party code repository is configured. Changing `provider_type` will create a new resource. Conflicts with `host_arn`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of key-value resource tags to associate with the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [timeouts] Optional.
  ConnectionArgs({
    String? hostArn,
    String? name,
    String? providerType,
    String? region,
    Map<String, String>? tags,
    ConnectionTimeouts? timeouts,
  }) : hostArn = pulumi.Input.asOptionalInput<String>(hostArn),
       name = pulumi.Input.asOptionalInput<String>(name),
       providerType = pulumi.Input.asOptionalInput<String>(providerType),
       region = pulumi.Input.asOptionalInput<String>(region),
       tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
       timeouts = pulumi.Input.asOptionalInput<ConnectionTimeouts>(timeouts);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostArn': ?hostArn,
      'name': ?name,
      'providerType': ?providerType,
      'region': ?region,
      'tags': ?tags,
      'timeouts':
          ?pulumi.Input.mapOptionalInputValue<
            ConnectionTimeouts,
            Map<String, dynamic>
          >(timeouts, (value) => value.toMap()),
    };
  }

  factory ConnectionArgs.fromMap(Map<String, dynamic> map) {
    return ConnectionArgs(
      hostArn: map['hostArn'] == null ? null : map['hostArn'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      providerType: map['providerType'] == null
          ? null
          : map['providerType'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      timeouts: map['timeouts'] == null
          ? null
          : ConnectionTimeouts.fromMap(
              (map['timeouts'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
