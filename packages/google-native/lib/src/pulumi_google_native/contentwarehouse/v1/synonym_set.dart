import 'package:pulumi/pulumi.dart' hide Config;
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
    this.context = registerOutput<String>('context');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.synonyms = registerOutput<
            List<GoogleCloudContentwarehouseV1SynonymSetSynonymResponse>>(
        'synonyms');
  }
}
