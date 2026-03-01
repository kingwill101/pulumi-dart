// ignore_for_file: unused_element, unnecessary_cast

import 'ip_family_enum_value_response.dart';

/// Definition of KubernetesNetworkConfigResponse
class KubernetesNetworkConfigResponseResponse {
  /// <p>The IP family used to assign Kubernetes <code>Pod</code> and <code>Service</code> objects IP addresses. The IP family is always <code>ipv4</code>, unless you have a <code>1.21</code> or later cluster running version <code>1.10.1</code> or later of the Amazon VPC CNI plugin for Kubernetes and specified <code>ipv6</code> when you created the cluster. </p>
  final IpFamilyEnumValueResponse? ipFamily;
  /// <p>The CIDR block that Kubernetes <code>Pod</code> and <code>Service</code> object IP addresses are assigned from. Kubernetes assigns addresses from an <code>IPv4</code> CIDR block assigned to a subnet that the node is in. If you didn't specify a CIDR block when you created the cluster, then Kubernetes assigns addresses from either the <code>10.100.0.0/16</code> or <code>172.20.0.0/16</code> CIDR blocks. If this was specified, then it was specified when the cluster was created and it can't be changed.</p>
  final String? serviceIpv4Cidr;
  /// <p>The CIDR block that Kubernetes pod and service IP addresses are assigned from if you created a 1.21 or later cluster with version 1.10.1 or later of the Amazon VPC CNI add-on and specified <code>ipv6</code> for <b>ipFamily</b> when you created the cluster. Kubernetes assigns service addresses from the unique local address range (<code>fc00::/7</code>) because you can't specify a custom IPv6 CIDR block when you create the cluster.</p>
  final String? serviceIpv6Cidr;

  /// Creates a new [KubernetesNetworkConfigResponseResponse].
  /// [ipFamily] <p>The IP family used to assign Kubernetes <code>Pod</code> and <code>Service</code> objects IP addresses. The IP family is always <code>ipv4</code>, unless you have a <code>1.21</code> or later cluster running version <code>1.10.1</code> or later of the Amazon VPC CNI plugin for Kubernetes and specified <code>ipv6</code> when you created the cluster. </p>
  /// [serviceIpv4Cidr] <p>The CIDR block that Kubernetes <code>Pod</code> and <code>Service</code> object IP addresses are assigned from. Kubernetes assigns addresses from an <code>IPv4</code> CIDR block assigned to a subnet that the node is in. If you didn't specify a CIDR block when you created the cluster, then Kubernetes assigns addresses from either the <code>10.100.0.0/16</code> or <code>172.20.0.0/16</code> CIDR blocks. If this was specified, then it was specified when the cluster was created and it can't be changed.</p>
  /// [serviceIpv6Cidr] <p>The CIDR block that Kubernetes pod and service IP addresses are assigned from if you created a 1.21 or later cluster with version 1.10.1 or later of the Amazon VPC CNI add-on and specified <code>ipv6</code> for <b>ipFamily</b> when you created the cluster. Kubernetes assigns service addresses from the unique local address range (<code>fc00::/7</code>) because you can't specify a custom IPv6 CIDR block when you create the cluster.</p>
  KubernetesNetworkConfigResponseResponse({
    this.ipFamily,
    this.serviceIpv4Cidr,
    this.serviceIpv6Cidr,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipFamily': ?ipFamily == null ? null : ipFamily!.toMap(),
      'serviceIpv4Cidr': ?serviceIpv4Cidr,
      'serviceIpv6Cidr': ?serviceIpv6Cidr,
    };
  }

  factory KubernetesNetworkConfigResponseResponse.fromMap(Map<String, dynamic> map) {
    return KubernetesNetworkConfigResponseResponse(
      ipFamily: map['ipFamily'] == null ? null : IpFamilyEnumValueResponse.fromMap((map['ipFamily'] as Map).cast<String, dynamic>()),
      serviceIpv4Cidr: map['serviceIpv4Cidr'] == null ? null : map['serviceIpv4Cidr'] as String,
      serviceIpv6Cidr: map['serviceIpv6Cidr'] == null ? null : map['serviceIpv6Cidr'] as String,
    );
  }
}

