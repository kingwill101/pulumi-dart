// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_point_public_access_block_configuration.dart';
import 'access_point_vpc_configuration.dart';

/// Input properties used for looking up and filtering AccessPoint resources.
class AccessPointState {
  /// The name of the access point
  final pulumi.Input<String>? accessPointName;
  /// The Bucket to which the current access point belongs.
  final pulumi.Input<String>? bucket;
  /// Access point network source. The valid values are as follows:
  /// - vpc: only the specified VPC ID can be used to access the access point.
  /// - internet: the access point can be accessed through both external and internal Endpoint.
  final pulumi.Input<String>? networkOrigin;
  /// Configuration of Access Point Blocking Public Access See `public_access_block_configuration` below.
  final pulumi.Input<AccessPointPublicAccessBlockConfiguration>? publicAccessBlockConfiguration;
  /// The status of the resource
  final pulumi.Input<String>? status;
  /// If the Network Origin is vpc, the VPC source information is saved here. See `vpc_configuration` below.
  final pulumi.Input<AccessPointVpcConfiguration>? vpcConfiguration;

  /// Creates a new [AccessPointState].
  /// [accessPointName] The name of the access point
  /// [bucket] The Bucket to which the current access point belongs.
  /// [networkOrigin] Access point network source. The valid values are as follows:
  /// [publicAccessBlockConfiguration] Configuration of Access Point Blocking Public Access See `public_access_block_configuration` below.
  /// [status] The status of the resource
  /// [vpcConfiguration] If the Network Origin is vpc, the VPC source information is saved here. See `vpc_configuration` below.
  AccessPointState({
    this.accessPointName,
    this.bucket,
    this.networkOrigin,
    this.publicAccessBlockConfiguration,
    this.status,
    this.vpcConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessPointName': ?accessPointName,
      'bucket': ?bucket,
      'networkOrigin': ?networkOrigin,
      'publicAccessBlockConfiguration': ?pulumi.Input.mapOptionalInputValue<AccessPointPublicAccessBlockConfiguration, Map<String, dynamic>>(publicAccessBlockConfiguration, (value) => value.toMap()),
      'status': ?status,
      'vpcConfiguration': ?pulumi.Input.mapOptionalInputValue<AccessPointVpcConfiguration, Map<String, dynamic>>(vpcConfiguration, (value) => value.toMap()),
    };
  }

  factory AccessPointState.fromMap(Map<String, dynamic> map) {
    return AccessPointState(
      accessPointName: map['accessPointName'] == null ? null : (map['accessPointName'] as String).input(),
      bucket: map['bucket'] == null ? null : (map['bucket'] as String).input(),
      networkOrigin: map['networkOrigin'] == null ? null : (map['networkOrigin'] as String).input(),
      publicAccessBlockConfiguration: map['publicAccessBlockConfiguration'] == null ? null : (AccessPointPublicAccessBlockConfiguration.fromMap((map['publicAccessBlockConfiguration'] as Map).cast<String, dynamic>())).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      vpcConfiguration: map['vpcConfiguration'] == null ? null : (AccessPointVpcConfiguration.fromMap((map['vpcConfiguration'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

