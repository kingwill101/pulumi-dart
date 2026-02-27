import 'package:pulumi/pulumi.dart' as pulumi;
import '../classification_export_configuration_s3_destination/classification_export_configuration_s3_destination.dart';
import 'classification_export_configuration_args.dart';

/// Provides a resource to manage an [Amazon Macie Classification Export Configuration](https://docs.aws.amazon.com/macie/latest/APIReference/classification-export-configuration.html).
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.macie2.ClassificationExportConfiguration` using the region. For example:
///
/// ```sh
/// $ pulumi import aws:macie2/classificationExportConfiguration:ClassificationExportConfiguration example us-west-2
/// ```
class ClassificationExportConfiguration extends pulumi.CustomResource {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Configuration block for a S3 Destination. Defined below
  late final pulumi.Output<ClassificationExportConfigurationS3Destination>
      s3Destination;

  ClassificationExportConfiguration(
    String name, {
    ClassificationExportConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:macie2/classificationExportConfiguration:ClassificationExportConfiguration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.region = registerOutput<String>('region');
    this.s3Destination =
        registerOutput<ClassificationExportConfigurationS3Destination>(
            's3Destination');
  }
}
