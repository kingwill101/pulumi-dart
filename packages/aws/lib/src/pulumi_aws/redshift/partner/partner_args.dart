// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Partner.
class PartnerArgs {
  /// The Amazon Web Services account ID that owns the cluster.
  final pulumi.Input<String> accountId;

  /// The cluster identifier of the cluster that receives data from the partner.
  final pulumi.Input<String> clusterIdentifier;

  /// The name of the database that receives data from the partner.
  final pulumi.Input<String> databaseName;

  /// The name of the partner that is authorized to send data.
  final pulumi.Input<String> partnerName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  PartnerArgs({
    required this.accountId,
    required this.clusterIdentifier,
    required this.databaseName,
    required this.partnerName,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['accountId'] = accountId;
    map['clusterIdentifier'] = clusterIdentifier;
    map['databaseName'] = databaseName;
    map['partnerName'] = partnerName;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory PartnerArgs.fromMap(Map<String, dynamic> map) {
    return PartnerArgs(
      accountId: pulumi.Input.asInput<String>(map['accountId']),
      clusterIdentifier: pulumi.Input.asInput<String>(map['clusterIdentifier']),
      databaseName: pulumi.Input.asInput<String>(map['databaseName']),
      partnerName: pulumi.Input.asInput<String>(map['partnerName']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
