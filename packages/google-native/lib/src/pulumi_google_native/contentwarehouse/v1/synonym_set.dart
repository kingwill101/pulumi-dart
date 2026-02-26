import 'package:pulumi/pulumi.dart';
import 'google_cloud_contentwarehouse_v1_synonym_set_synonym_response.dart';
import 'synonym_set_args.dart';

/// Creates a SynonymSet for a single context. Throws an ALREADY_EXISTS exception if a synonymset already exists for the context.
class SynonymSet extends CustomResource {
  /// This is a freeform field. Example contexts can be "sales," "engineering," "real estate," "accounting," etc. The context can be supplied during search requests.
  late final Output<String> context;
  late final Output<String> location;

  /// The resource name of the SynonymSet This is mandatory for google.api.resource. Format: projects/{project_number}/locations/{location}/synonymSets/{context}.
  late final Output<String> name;
  late final Output<String> project;

  /// List of Synonyms for the context.
  late final Output<
      List<GoogleCloudContentwarehouseV1SynonymSetSynonymResponse>> synonyms;

  SynonymSet(
    String name, {
    SynonymSetArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:contentwarehouse/v1:SynonymSet',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.context = Output.createUnknown<String>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.synonyms = Output.createUnknown<
        List<GoogleCloudContentwarehouseV1SynonymSetSynonymResponse>>();
  }
}
