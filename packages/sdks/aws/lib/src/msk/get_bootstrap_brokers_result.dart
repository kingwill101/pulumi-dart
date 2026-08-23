// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getBootstrapBrokers.
class GetBootstrapBrokersResult {
  /// Comma separated list of one or more hostname:port pairs of kafka brokers suitable to bootstrap connectivity to the kafka cluster.
  final String bootstrapBrokers;
  /// One or more IPv6 DNS names (or IP addresses) and plaintext port pairs for clusters configured with DUAL network type.
  final String bootstrapBrokersIpv6;
  /// One or more DNS names (or IP addresses) and SASL IAM port pairs.
  final String bootstrapBrokersPublicSaslIam;
  /// One or more DNS names (or IP addresses) and SASL SCRAM port pairs.
  final String bootstrapBrokersPublicSaslScram;
  /// One or more DNS names (or IP addresses) and TLS port pairs.
  final String bootstrapBrokersPublicTls;
  /// One or more DNS names (or IP addresses) and SASL IAM port pairs.
  final String bootstrapBrokersSaslIam;
  /// One or more IPv6 DNS names (or IP addresses) and SASL IAM port pairs for clusters configured with DUAL network type.
  final String bootstrapBrokersSaslIamIpv6;
  /// One or more DNS names (or IP addresses) and SASL SCRAM port pairs.
  final String bootstrapBrokersSaslScram;
  /// One or more IPv6 DNS names (or IP addresses) and SASL SCRAM port pairs for clusters configured with DUAL network type.
  final String bootstrapBrokersSaslScramIpv6;
  /// One or more DNS names (or IP addresses) and TLS port pairs.
  final String bootstrapBrokersTls;
  /// One or more IPv6 DNS names (or IP addresses) and TLS port pairs for clusters configured with DUAL network type.
  final String bootstrapBrokersTlsIpv6;
  /// A string containing one or more DNS names (or IP addresses) and SASL IAM port pairs for VPC connectivity.
  final String bootstrapBrokersVpcConnectivitySaslIam;
  /// A string containing one or more DNS names (or IP addresses) and SASL SCRAM port pairs for VPC connectivity.
  final String bootstrapBrokersVpcConnectivitySaslScram;
  /// A string containing one or more DNS names (or IP addresses) and TLS port pairs for VPC connectivity.
  final String bootstrapBrokersVpcConnectivityTls;
  final String clusterArn;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String region;

  /// Creates a new [GetBootstrapBrokersResult].
  /// [bootstrapBrokers] Comma separated list of one or more hostname:port pairs of kafka brokers suitable to bootstrap connectivity to the kafka cluster.
  /// [bootstrapBrokersIpv6] One or more IPv6 DNS names (or IP addresses) and plaintext port pairs for clusters configured with DUAL network type.
  /// [bootstrapBrokersPublicSaslIam] One or more DNS names (or IP addresses) and SASL IAM port pairs.
  /// [bootstrapBrokersPublicSaslScram] One or more DNS names (or IP addresses) and SASL SCRAM port pairs.
  /// [bootstrapBrokersPublicTls] One or more DNS names (or IP addresses) and TLS port pairs.
  /// [bootstrapBrokersSaslIam] One or more DNS names (or IP addresses) and SASL IAM port pairs.
  /// [bootstrapBrokersSaslIamIpv6] One or more IPv6 DNS names (or IP addresses) and SASL IAM port pairs for clusters configured with DUAL network type.
  /// [bootstrapBrokersSaslScram] One or more DNS names (or IP addresses) and SASL SCRAM port pairs.
  /// [bootstrapBrokersSaslScramIpv6] One or more IPv6 DNS names (or IP addresses) and SASL SCRAM port pairs for clusters configured with DUAL network type.
  /// [bootstrapBrokersTls] One or more DNS names (or IP addresses) and TLS port pairs.
  /// [bootstrapBrokersTlsIpv6] One or more IPv6 DNS names (or IP addresses) and TLS port pairs for clusters configured with DUAL network type.
  /// [bootstrapBrokersVpcConnectivitySaslIam] A string containing one or more DNS names (or IP addresses) and SASL IAM port pairs for VPC connectivity.
  /// [bootstrapBrokersVpcConnectivitySaslScram] A string containing one or more DNS names (or IP addresses) and SASL SCRAM port pairs for VPC connectivity.
  /// [bootstrapBrokersVpcConnectivityTls] A string containing one or more DNS names (or IP addresses) and TLS port pairs for VPC connectivity.
  /// [clusterArn] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [region] Required.
  const GetBootstrapBrokersResult({
    required this.bootstrapBrokers,
    required this.bootstrapBrokersIpv6,
    required this.bootstrapBrokersPublicSaslIam,
    required this.bootstrapBrokersPublicSaslScram,
    required this.bootstrapBrokersPublicTls,
    required this.bootstrapBrokersSaslIam,
    required this.bootstrapBrokersSaslIamIpv6,
    required this.bootstrapBrokersSaslScram,
    required this.bootstrapBrokersSaslScramIpv6,
    required this.bootstrapBrokersTls,
    required this.bootstrapBrokersTlsIpv6,
    required this.bootstrapBrokersVpcConnectivitySaslIam,
    required this.bootstrapBrokersVpcConnectivitySaslScram,
    required this.bootstrapBrokersVpcConnectivityTls,
    required this.clusterArn,
    required this.id,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bootstrapBrokers': bootstrapBrokers,
      'bootstrapBrokersIpv6': bootstrapBrokersIpv6,
      'bootstrapBrokersPublicSaslIam': bootstrapBrokersPublicSaslIam,
      'bootstrapBrokersPublicSaslScram': bootstrapBrokersPublicSaslScram,
      'bootstrapBrokersPublicTls': bootstrapBrokersPublicTls,
      'bootstrapBrokersSaslIam': bootstrapBrokersSaslIam,
      'bootstrapBrokersSaslIamIpv6': bootstrapBrokersSaslIamIpv6,
      'bootstrapBrokersSaslScram': bootstrapBrokersSaslScram,
      'bootstrapBrokersSaslScramIpv6': bootstrapBrokersSaslScramIpv6,
      'bootstrapBrokersTls': bootstrapBrokersTls,
      'bootstrapBrokersTlsIpv6': bootstrapBrokersTlsIpv6,
      'bootstrapBrokersVpcConnectivitySaslIam': bootstrapBrokersVpcConnectivitySaslIam,
      'bootstrapBrokersVpcConnectivitySaslScram': bootstrapBrokersVpcConnectivitySaslScram,
      'bootstrapBrokersVpcConnectivityTls': bootstrapBrokersVpcConnectivityTls,
      'clusterArn': clusterArn,
      'id': id,
      'region': region,
    };
  }

  factory GetBootstrapBrokersResult.fromMap(Map<String, dynamic> map) {
    return GetBootstrapBrokersResult(
      bootstrapBrokers: map['bootstrapBrokers'] as String,
      bootstrapBrokersIpv6: map['bootstrapBrokersIpv6'] as String,
      bootstrapBrokersPublicSaslIam: map['bootstrapBrokersPublicSaslIam'] as String,
      bootstrapBrokersPublicSaslScram: map['bootstrapBrokersPublicSaslScram'] as String,
      bootstrapBrokersPublicTls: map['bootstrapBrokersPublicTls'] as String,
      bootstrapBrokersSaslIam: map['bootstrapBrokersSaslIam'] as String,
      bootstrapBrokersSaslIamIpv6: map['bootstrapBrokersSaslIamIpv6'] as String,
      bootstrapBrokersSaslScram: map['bootstrapBrokersSaslScram'] as String,
      bootstrapBrokersSaslScramIpv6: map['bootstrapBrokersSaslScramIpv6'] as String,
      bootstrapBrokersTls: map['bootstrapBrokersTls'] as String,
      bootstrapBrokersTlsIpv6: map['bootstrapBrokersTlsIpv6'] as String,
      bootstrapBrokersVpcConnectivitySaslIam: map['bootstrapBrokersVpcConnectivitySaslIam'] as String,
      bootstrapBrokersVpcConnectivitySaslScram: map['bootstrapBrokersVpcConnectivitySaslScram'] as String,
      bootstrapBrokersVpcConnectivityTls: map['bootstrapBrokersVpcConnectivityTls'] as String,
      clusterArn: map['clusterArn'] as String,
      id: map['id'] as String,
      region: map['region'] as String,
    );
  }
}
