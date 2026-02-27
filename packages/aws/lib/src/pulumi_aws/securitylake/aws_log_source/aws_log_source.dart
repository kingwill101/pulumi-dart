import 'package:pulumi/pulumi.dart' as pulumi;
import '../aws_log_source_source/aws_log_source_source.dart';
import 'aws_log_source_args.dart';

/// Resource for managing an Amazon Security Lake AWS Log Source.
///
/// > **NOTE:** A single `aws.securitylake.AwsLogSource` should be used to configure a log source across all regions and accounts.
///
/// > **NOTE:** The underlying `aws.securitylake.DataLake` must be configured before creating the `aws.securitylake.AwsLogSource`. Use a `depends_on` statement.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import AWS log sources using the source name. For example:
///
/// ```sh
/// $ pulumi import aws:securitylake/awsLogSource:AwsLogSource example ROUTE53
/// ```
class AwsLogSource extends pulumi.CustomResource {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Specify the natively-supported AWS service to add as a source in Security Lake.
  late final pulumi.Output<AwsLogSourceSource> source;

  AwsLogSource(
    String name, {
    AwsLogSourceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:securitylake/awsLogSource:AwsLogSource',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.region = registerOutput<String>('region');
    this.source = registerOutput<AwsLogSourceSource>('source');
  }
}
