// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getBootstrapBrokers.
class GetBootstrapBrokersResult {
  /// Comma separated list of one or more hostname:port pairs of kafka brokers suitable to bootstrap connectivity to the kafka cluster.
  final String? bootstrapBrokers;
  /// One or more IPv6 DNS names (or IP addresses) and plaintext port pairs for clusters configured with DUAL network type.
  final String? bootstrapBrokersIpv6;
  /// One or more DNS names (or IP addresses) and SASL IAM port pairs.
  final String? bootstrapBrokersPublicSaslIam;
  /// One or more DNS names (or IP addresses) and SASL SCRAM port pairs.
  final String? bootstrapBrokersPublicSaslScram;
  /// One or more DNS names (or IP addresses) and TLS port pairs.
  final String? bootstrapBrokersPublicTls;
  /// One or more DNS names (or IP addresses) and SASL IAM port pairs.
  final String? bootstrapBrokersSaslIam;
  /// One or more IPv6 DNS names (or IP addresses) and SASL IAM port pairs for clusters configured with DUAL network type.
  final String? bootstrapBrokersSaslIamIpv6;
  /// One or more DNS names (or IP addresses) and SASL SCRAM port pairs.
  final String? bootstrapBrokersSaslScram;
  /// One or more IPv6 DNS names (or IP addresses) and SASL SCRAM port pairs for clusters configured with DUAL network type.
  final String? bootstrapBrokersSaslScramIpv6;
  /// One or more DNS names (or IP addresses) and TLS port pairs.
  final String? bootstrapBrokersTls;
  /// One or more IPv6 DNS names (or IP addresses) and TLS port pairs for clusters configured with DUAL network type.
  final String? bootstrapBrokersTlsIpv6;
  /// A string containing one or more DNS names (or IP addresses) and SASL IAM port pairs for VPC connectivity.
  final String? bootstrapBrokersVpcConnectivitySaslIam;
  /// A string containing one or more DNS names (or IP addresses) and SASL SCRAM port pairs for VPC connectivity.
  final String? bootstrapBrokersVpcConnectivitySaslScram;
  /// A string containing one or more DNS names (or IP addresses) and TLS port pairs for VPC connectivity.
  final String? bootstrapBrokersVpcConnectivityTls;
  final String? clusterArn;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? region;

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
  /// [clusterArn] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [region] Optional.
  const GetBootstrapBrokersResult({
    this.bootstrapBrokers,
    this.bootstrapBrokersIpv6,
    this.bootstrapBrokersPublicSaslIam,
    this.bootstrapBrokersPublicSaslScram,
    this.bootstrapBrokersPublicTls,
    this.bootstrapBrokersSaslIam,
    this.bootstrapBrokersSaslIamIpv6,
    this.bootstrapBrokersSaslScram,
    this.bootstrapBrokersSaslScramIpv6,
    this.bootstrapBrokersTls,
    this.bootstrapBrokersTlsIpv6,
    this.bootstrapBrokersVpcConnectivitySaslIam,
    this.bootstrapBrokersVpcConnectivitySaslScram,
    this.bootstrapBrokersVpcConnectivityTls,
    this.clusterArn,
    this.id,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bootstrapBrokers': ?bootstrapBrokers,
      'bootstrapBrokersIpv6': ?bootstrapBrokersIpv6,
      'bootstrapBrokersPublicSaslIam': ?bootstrapBrokersPublicSaslIam,
      'bootstrapBrokersPublicSaslScram': ?bootstrapBrokersPublicSaslScram,
      'bootstrapBrokersPublicTls': ?bootstrapBrokersPublicTls,
      'bootstrapBrokersSaslIam': ?bootstrapBrokersSaslIam,
      'bootstrapBrokersSaslIamIpv6': ?bootstrapBrokersSaslIamIpv6,
      'bootstrapBrokersSaslScram': ?bootstrapBrokersSaslScram,
      'bootstrapBrokersSaslScramIpv6': ?bootstrapBrokersSaslScramIpv6,
      'bootstrapBrokersTls': ?bootstrapBrokersTls,
      'bootstrapBrokersTlsIpv6': ?bootstrapBrokersTlsIpv6,
      'bootstrapBrokersVpcConnectivitySaslIam': ?bootstrapBrokersVpcConnectivitySaslIam,
      'bootstrapBrokersVpcConnectivitySaslScram': ?bootstrapBrokersVpcConnectivitySaslScram,
      'bootstrapBrokersVpcConnectivityTls': ?bootstrapBrokersVpcConnectivityTls,
      'clusterArn': ?clusterArn,
      'id': ?id,
      'region': ?region,
    };
  }

  factory GetBootstrapBrokersResult.fromMap(Map<String, dynamic> map) {
    return GetBootstrapBrokersResult(
      bootstrapBrokers: (() { final guardedValue = map['bootstrapBrokers']; if (guardedValue == null) return null; return guardedValue as String; })(),
      bootstrapBrokersIpv6: (() { final guardedValue = map['bootstrapBrokersIpv6']; if (guardedValue == null) return null; return guardedValue as String; })(),
      bootstrapBrokersPublicSaslIam: (() { final guardedValue = map['bootstrapBrokersPublicSaslIam']; if (guardedValue == null) return null; return guardedValue as String; })(),
      bootstrapBrokersPublicSaslScram: (() { final guardedValue = map['bootstrapBrokersPublicSaslScram']; if (guardedValue == null) return null; return guardedValue as String; })(),
      bootstrapBrokersPublicTls: (() { final guardedValue = map['bootstrapBrokersPublicTls']; if (guardedValue == null) return null; return guardedValue as String; })(),
      bootstrapBrokersSaslIam: (() { final guardedValue = map['bootstrapBrokersSaslIam']; if (guardedValue == null) return null; return guardedValue as String; })(),
      bootstrapBrokersSaslIamIpv6: (() { final guardedValue = map['bootstrapBrokersSaslIamIpv6']; if (guardedValue == null) return null; return guardedValue as String; })(),
      bootstrapBrokersSaslScram: (() { final guardedValue = map['bootstrapBrokersSaslScram']; if (guardedValue == null) return null; return guardedValue as String; })(),
      bootstrapBrokersSaslScramIpv6: (() { final guardedValue = map['bootstrapBrokersSaslScramIpv6']; if (guardedValue == null) return null; return guardedValue as String; })(),
      bootstrapBrokersTls: (() { final guardedValue = map['bootstrapBrokersTls']; if (guardedValue == null) return null; return guardedValue as String; })(),
      bootstrapBrokersTlsIpv6: (() { final guardedValue = map['bootstrapBrokersTlsIpv6']; if (guardedValue == null) return null; return guardedValue as String; })(),
      bootstrapBrokersVpcConnectivitySaslIam: (() { final guardedValue = map['bootstrapBrokersVpcConnectivitySaslIam']; if (guardedValue == null) return null; return guardedValue as String; })(),
      bootstrapBrokersVpcConnectivitySaslScram: (() { final guardedValue = map['bootstrapBrokersVpcConnectivitySaslScram']; if (guardedValue == null) return null; return guardedValue as String; })(),
      bootstrapBrokersVpcConnectivityTls: (() { final guardedValue = map['bootstrapBrokersVpcConnectivityTls']; if (guardedValue == null) return null; return guardedValue as String; })(),
      clusterArn: (() { final guardedValue = map['clusterArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
