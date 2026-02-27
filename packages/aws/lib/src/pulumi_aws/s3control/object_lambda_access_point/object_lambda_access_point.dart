import 'package:pulumi/pulumi.dart' as pulumi;
import '../object_lambda_access_point_configuration/object_lambda_access_point_configuration.dart';
import 'object_lambda_access_point_args.dart';

/// Provides a resource to manage an S3 Object Lambda Access Point.
/// An Object Lambda access point is associated with exactly one standard access point and thus one Amazon S3 bucket.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Object Lambda Access Points using the `account_id` and `name`, separated by a colon (`:`). For example:
///
/// ```sh
/// $ pulumi import aws:s3control/objectLambdaAccessPoint:ObjectLambdaAccessPoint example 123456789012:example
/// ```
class ObjectLambdaAccessPoint extends pulumi.CustomResource {
  /// The AWS account ID for the owner of the bucket for which you want to create an Object Lambda Access Point. Defaults to automatically determined account ID of the AWS provider.
  late final pulumi.Output<String> accountId;

  /// Alias for the S3 Object Lambda Access Point.
  late final pulumi.Output<String> alias;

  /// Amazon Resource Name (ARN) of the Object Lambda Access Point.
  late final pulumi.Output<String> arn;

  /// A configuration block containing details about the Object Lambda Access Point. See Configuration below for more details.
  late final pulumi.Output<ObjectLambdaAccessPointConfiguration> configuration;

  /// The name for this Object Lambda Access Point.
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  ObjectLambdaAccessPoint(
    String name, {
    ObjectLambdaAccessPointArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:s3control/objectLambdaAccessPoint:ObjectLambdaAccessPoint',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accountId = registerOutput<String>('accountId');
    this.alias = registerOutput<String>('alias');
    this.arn = registerOutput<String>('arn');
    this.configuration =
        registerOutput<ObjectLambdaAccessPointConfiguration>('configuration');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
  }
}
