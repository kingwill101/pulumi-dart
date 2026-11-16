// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connector_connector_configuration.dart';

/// {@template pulumi_cfg_connector_connector_args_doc}
/// The set of arguments for Connector.
/// {@endtemplate}
/// {@macro pulumi_cfg_connector_connector_args_doc}
class ConnectorArgs {
  /// Provider-specific configuration for connecting to the third-party cloud service provider. See `connectorConfiguration` Block below.
  ///
  /// The following arguments are optional:
  final pulumi.Input<ConnectorConnectorConfiguration> connectorConfiguration;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [ConnectorArgs].
  /// [connectorConfiguration] Provider-specific configuration for connecting to the third-party cloud service provider. See `connectorConfiguration` Block below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  const ConnectorArgs({
    required this.connectorConfiguration,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectorConfiguration': pulumi.Input.mapInputValue<ConnectorConnectorConfiguration, Map<String, dynamic>>(connectorConfiguration, (value) => value.toMap()),
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory ConnectorArgs.fromMap(Map<String, dynamic> map) {
    return ConnectorArgs(
      connectorConfiguration: pulumi.Input.fromValue(ConnectorConnectorConfiguration.fromMap((map['connectorConfiguration']! as Map).cast<String, dynamic>())),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
