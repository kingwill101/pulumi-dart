// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'core_network_connector_configuration.dart';
import 'core_network_connector_timeouts.dart';

/// Input properties used for looking up and filtering CoreNetworkConnector resources.
class CoreNetworkConnectorState {
  /// ARN of the network connector.
  final pulumi.Input<String?>? arn;
  /// Network configuration of the connector. See `configuration` Block below.
  final pulumi.Input<CoreNetworkConnectorConfiguration?>? configuration;
  /// Number of the connector's latest version. Each configuration change creates a new immutable version.
  final pulumi.Input<int?>? latestVersion;
  /// Version-qualified ARN of the connector's latest version. Use it for `service_config.egress_network_connector_arn` on an `aws.lambdaweb.FunctionRevision` resource.
  final pulumi.Input<String?>? latestVersionArn;
  /// Name of the network connector, unique within the account and Region. Changing this forces a new resource.
  final pulumi.Input<String?>? name;
  /// ARN of the IAM role that the network connector service assumes to manage elastic network interfaces in your VPC.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String?>? operatorRole;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  final pulumi.Input<CoreNetworkConnectorTimeouts?>? timeouts;

  /// Creates a new [CoreNetworkConnectorState].
  /// [arn] ARN of the network connector.
  /// [configuration] Network configuration of the connector. See `configuration` Block below.
  /// [latestVersion] Number of the connector's latest version. Each configuration change creates a new immutable version.
  /// [latestVersionArn] Version-qualified ARN of the connector's latest version. Use it for `service_config.egress_network_connector_arn` on an `aws.lambdaweb.FunctionRevision` resource.
  /// [name] Name of the network connector, unique within the account and Region. Changing this forces a new resource.
  /// [operatorRole] ARN of the IAM role that the network connector service assumes to manage elastic network interfaces in your VPC.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [timeouts] Optional.
  const CoreNetworkConnectorState({
    this.arn,
    this.configuration,
    this.latestVersion,
    this.latestVersionArn,
    this.name,
    this.operatorRole,
    this.region,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'configuration': ?pulumi.Input.mapOptionalInputValue<CoreNetworkConnectorConfiguration, Map<String, dynamic>>(configuration, (value) => value.toMap()),
      'latestVersion': ?latestVersion,
      'latestVersionArn': ?latestVersionArn,
      'name': ?name,
      'operatorRole': ?operatorRole,
      'region': ?region,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<CoreNetworkConnectorTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory CoreNetworkConnectorState.fromMap(Map<String, dynamic> map) {
    return CoreNetworkConnectorState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      configuration: (() { final guardedValue = map['configuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CoreNetworkConnectorConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      latestVersion: (() { final guardedValue = map['latestVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      latestVersionArn: (() { final guardedValue = map['latestVersionArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      operatorRole: (() { final guardedValue = map['operatorRole']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CoreNetworkConnectorTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
