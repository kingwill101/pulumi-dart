import 'package:pulumi/pulumi.dart';
import 'partner_args.dart';

/// Creates a new Amazon Redshift Partner Integration.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Redshift usage limits using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:redshift/partner:Partner example 01234567910:cluster-example-id:example:example
/// ```
class Partner extends CustomResource {
  /// The Amazon Web Services account ID that owns the cluster.
  late final Output<String> accountId;

  /// The cluster identifier of the cluster that receives data from the partner.
  late final Output<String> clusterIdentifier;

  /// The name of the database that receives data from the partner.
  late final Output<String> databaseName;

  /// The name of the partner that is authorized to send data.
  late final Output<String> partnerName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// (Optional) The partner integration status.
  late final Output<String> status;

  /// (Optional) The status message provided by the partner.
  late final Output<String> statusMessage;

  Partner(
    String name, {
    PartnerArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:redshift/partner:Partner',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.accountId = registerOutput<String>('accountId');
    this.clusterIdentifier = registerOutput<String>('clusterIdentifier');
    this.databaseName = registerOutput<String>('databaseName');
    this.partnerName = registerOutput<String>('partnerName');
    this.region = registerOutput<String>('region');
    this.status = registerOutput<String>('status');
    this.statusMessage = registerOutput<String>('statusMessage');
  }
}
