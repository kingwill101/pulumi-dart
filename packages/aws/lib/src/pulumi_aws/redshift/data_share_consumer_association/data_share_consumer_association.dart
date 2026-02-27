import 'package:pulumi/pulumi.dart';
import 'data_share_consumer_association_args.dart';

/// Resource for managing an AWS Redshift Data Share Consumer Association.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ### Consumer Region
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Redshift Data Share Consumer Association using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:redshift/dataShareConsumerAssociation:DataShareConsumerAssociation example arn:aws:redshift:us-west-2:123456789012:datashare:b3bfde75-73fd-408b-9086-d6fccfd6d588/example,,,us-west-2
/// ```
class DataShareConsumerAssociation extends CustomResource {
  /// Whether to allow write operations for a datashare.
  late final Output<bool?> allowWrites;

  /// Whether the datashare is associated with the entire account. Conflicts with `consumer_arn` and `consumer_region`.
  late final Output<bool?> associateEntireAccount;

  /// Amazon Resource Name (ARN) of the consumer that is associated with the datashare. Conflicts with `associate_entire_account` and `consumer_region`.
  late final Output<String?> consumerArn;

  /// From a datashare consumer account, associates a datashare with all existing and future namespaces in the specified AWS Region. Conflicts with `associate_entire_account` and `consumer_arn`.
  late final Output<String?> consumerRegion;

  /// Amazon Resource Name (ARN) of the datashare that the consumer is to use with the account or the namespace.
  ///
  /// The following arguments are optional:
  late final Output<String> dataShareArn;

  /// Identifier of a datashare to show its managing entity.
  late final Output<String> managedBy;

  /// Amazon Resource Name (ARN) of the producer.
  late final Output<String> producerArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  DataShareConsumerAssociation(
    String name, {
    DataShareConsumerAssociationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:redshift/dataShareConsumerAssociation:DataShareConsumerAssociation',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.allowWrites = registerOutput<bool?>('allowWrites');
    this.associateEntireAccount =
        registerOutput<bool?>('associateEntireAccount');
    this.consumerArn = registerOutput<String?>('consumerArn');
    this.consumerRegion = registerOutput<String?>('consumerRegion');
    this.dataShareArn = registerOutput<String>('dataShareArn');
    this.managedBy = registerOutput<String>('managedBy');
    this.producerArn = registerOutput<String>('producerArn');
    this.region = registerOutput<String>('region');
  }
}
