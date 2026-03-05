// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_accelerator_attribute.dart';
import 'get_accelerator_ip_set.dart';

/// Result data returned by getAccelerator.
class GetAcceleratorResult {
  final String arn;
  final List<GetAcceleratorAttribute> attributes;
  final String dnsName;
  final String dualStackDnsName;
  final bool enabled;
  final String hostedZoneId;
  final String id;
  final String ipAddressType;
  final List<GetAcceleratorIpSet> ipSets;
  final String name;
  final Map<String, String> tags;

  /// Creates a new [GetAcceleratorResult].
  /// [arn] Required.
  /// [attributes] Required.
  /// [dnsName] Required.
  /// [dualStackDnsName] Required.
  /// [enabled] Required.
  /// [hostedZoneId] Required.
  /// [id] Required.
  /// [ipAddressType] Required.
  /// [ipSets] Required.
  /// [name] Required.
  /// [tags] Required.
  GetAcceleratorResult({
    required this.arn,
    required this.attributes,
    required this.dnsName,
    required this.dualStackDnsName,
    required this.enabled,
    required this.hostedZoneId,
    required this.id,
    required this.ipAddressType,
    required this.ipSets,
    required this.name,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'attributes':
          pulumi.Input.encodeList<
            GetAcceleratorAttribute,
            Map<String, dynamic>
          >(attributes, (value) => value.toMap()),
      'dnsName': dnsName,
      'dualStackDnsName': dualStackDnsName,
      'enabled': enabled,
      'hostedZoneId': hostedZoneId,
      'id': id,
      'ipAddressType': ipAddressType,
      'ipSets':
          pulumi.Input.encodeList<GetAcceleratorIpSet, Map<String, dynamic>>(
            ipSets,
            (value) => value.toMap(),
          ),
      'name': name,
      'tags': tags,
    };
  }

  factory GetAcceleratorResult.fromMap(Map<String, dynamic> map) {
    return GetAcceleratorResult(
      arn: map['arn'] as String,
      attributes: pulumi.Input.decodeList<GetAcceleratorAttribute>(
        map['attributes']!,
        (value) => GetAcceleratorAttribute.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      dnsName: map['dnsName'] as String,
      dualStackDnsName: map['dualStackDnsName'] as String,
      enabled: map['enabled'] as bool,
      hostedZoneId: map['hostedZoneId'] as String,
      id: map['id'] as String,
      ipAddressType: map['ipAddressType'] as String,
      ipSets: pulumi.Input.decodeList<GetAcceleratorIpSet>(
        map['ipSets']!,
        (value) =>
            GetAcceleratorIpSet.fromMap((value as Map).cast<String, dynamic>()),
      ),
      name: map['name'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}
