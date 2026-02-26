// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../host_timeouts/host_timeouts.dart';
import '../host_vpc_configuration/host_vpc_configuration.dart';

/// The set of arguments for Host.
class HostArgs {
  /// The name of the host to be created. The name must be unique in the calling AWS account.
  final Input<String>? name;

  /// The endpoint of the infrastructure to be represented by the host after it is created.
  final Input<String> providerEndpoint;

  /// The name of the external provider where your third-party code repository is configured.
  final Input<String> providerType;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;
  final Input<Map<String, String>>? tags;
  final Input<HostTimeouts>? timeouts;

  /// The VPC configuration to be provisioned for the host. A VPC must be configured, and the infrastructure to be represented by the host must already be connected to the VPC.
  final Input<HostVpcConfiguration>? vpcConfiguration;

  HostArgs({
    this.name,
    required this.providerEndpoint,
    required this.providerType,
    this.region,
    this.tags,
    this.timeouts,
    this.vpcConfiguration,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['providerEndpoint'] = providerEndpoint;
    map['providerType'] = providerType;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] =
          Input.mapOptionalInputValue<HostTimeouts, Map<String, dynamic>>(
              timeoutsValue, (value) => value.toMap());
    }
    final vpcConfigurationValue = vpcConfiguration;
    if (vpcConfigurationValue != null) {
      map['vpcConfiguration'] = Input.mapOptionalInputValue<
              HostVpcConfiguration, Map<String, dynamic>>(
          vpcConfigurationValue, (value) => value.toMap());
    }
    return map;
  }

  factory HostArgs.fromMap(Map<String, dynamic> map) {
    return HostArgs(
      name: Input.asOptionalInput<String>(map['name']),
      providerEndpoint: Input.asInput<String>(map['providerEndpoint']),
      providerType: Input.asInput<String>(map['providerType']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      timeouts: Input.asOptionalInput<HostTimeouts>(map['timeouts']),
      vpcConfiguration:
          Input.asOptionalInput<HostVpcConfiguration>(map['vpcConfiguration']),
    );
  }
}
