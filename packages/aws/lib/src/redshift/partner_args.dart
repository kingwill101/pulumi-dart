// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_redshift_partner_partner_args_doc}
/// The set of arguments for Partner.
/// {@endtemplate}
/// {@macro pulumi_redshift_partner_partner_args_doc}
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

  /// Creates a new [PartnerArgs].
  /// [accountId] The Amazon Web Services account ID that owns the cluster.
  /// [clusterIdentifier] The cluster identifier of the cluster that receives data from the partner.
  /// [databaseName] The name of the database that receives data from the partner.
  /// [partnerName] The name of the partner that is authorized to send data.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  PartnerArgs({
    required String accountId,
    required String clusterIdentifier,
    required String databaseName,
    required String partnerName,
    String? region,
  })  : accountId = pulumi.Input.asInput<String>(accountId),
        clusterIdentifier = pulumi.Input.asInput<String>(clusterIdentifier),
        databaseName = pulumi.Input.asInput<String>(databaseName),
        partnerName = pulumi.Input.asInput<String>(partnerName),
        region = pulumi.Input.asOptionalInput<String>(region);

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
      accountId: map['accountId'] as String,
      clusterIdentifier: map['clusterIdentifier'] as String,
      databaseName: map['databaseName'] as String,
      partnerName: map['partnerName'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
