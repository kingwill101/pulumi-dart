// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_point_public_access_block_configuration.dart';
import 'access_point_vpc_configuration.dart';

/// {@template pulumi_oss_access_point_access_point_args_doc}
/// The set of arguments for AccessPoint.
/// {@endtemplate}
/// {@macro pulumi_oss_access_point_access_point_args_doc}
class AccessPointArgs {
  /// The name of the access point
  final pulumi.Input<String> accessPointName;
  /// The Bucket to which the current access point belongs.
  final pulumi.Input<String> bucket;
  /// Access point network source. The valid values are as follows:
  /// - vpc: only the specified VPC ID can be used to access the access point.
  /// - internet: the access point can be accessed through both external and internal Endpoint.
  final pulumi.Input<String> networkOrigin;
  /// Configuration of Access Point Blocking Public Access See `public_access_block_configuration` below.
  final pulumi.Input<AccessPointPublicAccessBlockConfiguration>? publicAccessBlockConfiguration;
  /// If the Network Origin is vpc, the VPC source information is saved here. See `vpc_configuration` below.
  final pulumi.Input<AccessPointVpcConfiguration>? vpcConfiguration;

  /// Creates a new [AccessPointArgs].
  /// [accessPointName] The name of the access point
  /// [bucket] The Bucket to which the current access point belongs.
  /// [networkOrigin] Access point network source. The valid values are as follows:
  /// [publicAccessBlockConfiguration] Configuration of Access Point Blocking Public Access See `public_access_block_configuration` below.
  /// [vpcConfiguration] If the Network Origin is vpc, the VPC source information is saved here. See `vpc_configuration` below.
  const AccessPointArgs({
    required this.accessPointName,
    required this.bucket,
    required this.networkOrigin,
    this.publicAccessBlockConfiguration,
    this.vpcConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessPointName': accessPointName,
      'bucket': bucket,
      'networkOrigin': networkOrigin,
      'publicAccessBlockConfiguration': ?pulumi.Input.mapOptionalInputValue<AccessPointPublicAccessBlockConfiguration, Map<String, dynamic>>(publicAccessBlockConfiguration, (value) => value.toMap()),
      'vpcConfiguration': ?pulumi.Input.mapOptionalInputValue<AccessPointVpcConfiguration, Map<String, dynamic>>(vpcConfiguration, (value) => value.toMap()),
    };
  }

  factory AccessPointArgs.fromMap(Map<String, dynamic> map) {
    return AccessPointArgs(
      accessPointName: pulumi.Input.fromValue(map['accessPointName'] as String),
      bucket: pulumi.Input.fromValue(map['bucket'] as String),
      networkOrigin: pulumi.Input.fromValue(map['networkOrigin'] as String),
      publicAccessBlockConfiguration: (() { final guardedValue = map['publicAccessBlockConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessPointPublicAccessBlockConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vpcConfiguration: (() { final guardedValue = map['vpcConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessPointVpcConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

