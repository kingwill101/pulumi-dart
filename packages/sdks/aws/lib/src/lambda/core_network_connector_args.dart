// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'core_network_connector_configuration.dart';
import 'core_network_connector_timeouts.dart';

/// {@template pulumi_lambda_core_network_connector_core_network_connector_args_doc}
/// The set of arguments for CoreNetworkConnector.
/// {@endtemplate}
/// {@macro pulumi_lambda_core_network_connector_core_network_connector_args_doc}
class CoreNetworkConnectorArgs {
  /// Network configuration of the connector. See `configuration` Block below.
  final pulumi.Input<CoreNetworkConnectorConfiguration> configuration;
  /// Name of the network connector, unique within the account and Region. Changing this forces a new resource.
  final pulumi.Input<String>? name;
  /// ARN of the IAM role that the network connector service assumes to manage elastic network interfaces in your VPC.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> operatorRole;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  final pulumi.Input<CoreNetworkConnectorTimeouts>? timeouts;

  /// Creates a new [CoreNetworkConnectorArgs].
  /// [configuration] Network configuration of the connector. See `configuration` Block below.
  /// [name] Name of the network connector, unique within the account and Region. Changing this forces a new resource.
  /// [operatorRole] ARN of the IAM role that the network connector service assumes to manage elastic network interfaces in your VPC.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [timeouts] Optional.
  const CoreNetworkConnectorArgs({
    required this.configuration,
    this.name,
    required this.operatorRole,
    this.region,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configuration': pulumi.Input.mapInputValue<CoreNetworkConnectorConfiguration, Map<String, dynamic>>(configuration, (value) => value.toMap()),
      'name': ?name,
      'operatorRole': operatorRole,
      'region': ?region,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<CoreNetworkConnectorTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory CoreNetworkConnectorArgs.fromMap(Map<String, dynamic> map) {
    return CoreNetworkConnectorArgs(
      configuration: pulumi.Input.fromValue(CoreNetworkConnectorConfiguration.fromMap((map['configuration']! as Map).cast<String, dynamic>())),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      operatorRole: pulumi.Input.fromValue(map['operatorRole'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CoreNetworkConnectorTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
