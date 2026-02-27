import 'package:pulumi/pulumi.dart' as pulumi;
import '../dataset_encryption_spec/dataset_encryption_spec.dart';
import 'dataset_healthcare_args.dart';

/// A Healthcare `Dataset` is a toplevel logical grouping of `dicomStores`, `fhirStores` and `hl7V2Stores`.
///
///
/// To get more information about Dataset, see:
///
/// * [API documentation](https://cloud.google.com/healthcare/docs/reference/rest/v1/projects.locations.datasets)
/// * How-to Guides
/// * [Creating a dataset](https://cloud.google.com/healthcare/docs/how-tos/datasets)
///
/// ## Example Usage
///
/// ### Healthcare Dataset Basic
///
///
///
/// ### Healthcare Dataset Cmek
///
///
///
///
/// ## Import
///
/// Dataset can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/datasets/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, Dataset can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:healthcare/dataset:Dataset default projects/{{project}}/locations/{{location}}/datasets/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:healthcare/dataset:Dataset default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:healthcare/dataset:Dataset default {{location}}/{{name}}
/// ```
class DatasetHealthcare extends pulumi.CustomResource {
  /// A nested object resource.
  /// Structure is documented below.
  late final pulumi.Output<DatasetEncryptionSpec> encryptionSpec;

  /// The location for the Dataset.
  late final pulumi.Output<String> location;

  /// The resource name for the Dataset.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The fully qualified name of this dataset
  late final pulumi.Output<String> selfLink;

  /// The default timezone used by this dataset. Must be a either a valid IANA time zone name such as
  /// "America/New_York" or empty, which defaults to UTC. This is used for parsing times in resources
  /// (e.g., HL7 messages) where no explicit timezone is specified.
  late final pulumi.Output<String> timeZone;

  DatasetHealthcare(
    String name, {
    DatasetHealthcareArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:healthcare/dataset:Dataset',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.encryptionSpec =
        registerOutput<DatasetEncryptionSpec>('encryptionSpec');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.selfLink = registerOutput<String>('selfLink');
    this.timeZone = registerOutput<String>('timeZone');
  }
}
