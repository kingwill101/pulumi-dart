import 'package:pulumi/pulumi.dart';
import 'data_share_authorization_args.dart';

/// Resource for managing an AWS Redshift Data Share Authorization.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Redshift Data Share Authorization using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:redshift/dataShareAuthorization:DataShareAuthorization example arn:aws:redshift:us-west-2:123456789012:datashare:3072dae5-022b-4d45-9cd3-01f010aae4b2/example_share,123456789012
/// ```
class DataShareAuthorization extends CustomResource {
  /// Whether to allow write operations for a datashare.
  late final Output<bool?> allowWrites;

  /// Identifier of the data consumer that is authorized to access the datashare. This identifier is an AWS account ID or a keyword, such as `ADX`.
  late final Output<String> consumerIdentifier;

  /// Amazon Resource Name (ARN) of the datashare that producers are to authorize sharing for.
  ///
  /// The following arguments are optional:
  late final Output<String> dataShareArn;

  /// Identifier of a datashare to show its managing entity.
  late final Output<String> managedBy;

  /// Amazon Resource Name (ARN) of the producer.
  late final Output<String> producerArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  DataShareAuthorization(
    String name, {
    DataShareAuthorizationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:redshift/dataShareAuthorization:DataShareAuthorization',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.allowWrites = registerOutput<bool?>('allowWrites');
    this.consumerIdentifier = registerOutput<String>('consumerIdentifier');
    this.dataShareArn = registerOutput<String>('dataShareArn');
    this.managedBy = registerOutput<String>('managedBy');
    this.producerArn = registerOutput<String>('producerArn');
    this.region = registerOutput<String>('region');
  }
}
