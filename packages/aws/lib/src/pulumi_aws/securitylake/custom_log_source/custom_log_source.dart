import 'package:pulumi/pulumi.dart';
import '../custom_log_source_attribute/custom_log_source_attribute.dart';
import '../custom_log_source_configuration/custom_log_source_configuration.dart';
import '../custom_log_source_provider_detail/custom_log_source_provider_detail.dart';
import 'custom_log_source_args.dart';

/// Resource for managing an AWS Security Lake Custom Log Source.
///
/// > **NOTE:** The underlying `aws.securitylake.DataLake` must be configured before creating the `aws.securitylake.CustomLogSource`. Use a `depends_on` statement.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Custom log sources using the source name. For example:
///
/// ```sh
/// $ pulumi import aws:securitylake/customLogSource:CustomLogSource example example-name
/// ```
class CustomLogSource extends CustomResource {
  /// The attributes of a third-party custom source.
  late final Output<List<CustomLogSourceAttribute>> attributes;

  /// The configuration for the third-party custom source.
  late final Output<CustomLogSourceConfiguration> configuration;

  /// The Open Cybersecurity Schema Framework (OCSF) event classes which describes the type of data that the custom source will send to Security Lake.
  late final Output<List<String>?> eventClasses;

  /// The details of the log provider for a third-party custom source.
  late final Output<List<CustomLogSourceProviderDetail>> providerDetails;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Specify the name for a third-party custom source.
  /// This must be a Regionally unique value.
  /// Has a maximum length of 20.
  late final Output<String> sourceName;

  /// Specify the source version for the third-party custom source, to limit log collection to a specific version of custom data source.
  late final Output<String> sourceVersion;

  CustomLogSource(
    String name, {
    CustomLogSourceArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:securitylake/customLogSource:CustomLogSource',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.attributes =
        registerOutput<List<CustomLogSourceAttribute>>('attributes');
    this.configuration =
        registerOutput<CustomLogSourceConfiguration>('configuration');
    this.eventClasses = registerOutput<List<String>?>('eventClasses');
    this.providerDetails =
        registerOutput<List<CustomLogSourceProviderDetail>>('providerDetails');
    this.region = registerOutput<String>('region');
    this.sourceName = registerOutput<String>('sourceName');
    this.sourceVersion = registerOutput<String>('sourceVersion');
  }
}
