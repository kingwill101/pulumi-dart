import 'package:pulumi/pulumi.dart' as pulumi;
import 'sharedflow_args.dart';
import 'sharedflow_meta_data.dart';

/// You can combine policies and resources into a shared flow that you can consume from multiple API proxies, and even from other shared flows. Although it's like a proxy, a shared flow has no endpoint. It can be used only from an API proxy or shared flow that's in the same organization as the shared flow itself.
///
///
/// To get more information about SharedFlow, see:
///
/// * [API documentation](https://cloud.google.com/apigee/docs/reference/apis/apigee/rest/v1/organizations.sharedflows)
/// * How-to Guides
/// * [Sharedflows](https://cloud.google.com/apigee/docs/resources)
///
/// ## Import
///
/// SharedFlow can be imported using any of these accepted formats:
///
/// * `{{org_id}}/sharedflows/{{name}}`
///
/// * `{{org_id}}/{{name}}`
///
/// When using the `pulumi import` command, SharedFlow can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:apigee/sharedflow:Sharedflow default {{org_id}}/sharedflows/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:apigee/sharedflow:Sharedflow default {{org_id}}/{{name}}
/// ```
class Sharedflow extends pulumi.CustomResource {
  /// Path to the config zip bundle.
  ///
  /// - - -
  late final pulumi.Output<String> configBundle;
  late final pulumi.Output<String?> detectMd5hash;

  /// The id of the most recently created revision for this shared flow.
  late final pulumi.Output<String> latestRevisionId;

  /// (Computed) Base 64 MD5 hash of the uploaded data. It is speculative as remote does not return hash of the bundle. Remote changes are detected using returned last_modified timestamp.
  late final pulumi.Output<String> md5hash;

  /// Metadata describing the shared flow.
  /// Structure is documented below.
  late final pulumi.Output<List<SharedflowMetaData>> metaDatas;

  /// The ID of the shared flow.
  late final pulumi.Output<String> name;

  /// The Apigee Organization name associated with the Apigee instance.
  late final pulumi.Output<String> orgId;

  /// A list of revisions of this shared flow.
  late final pulumi.Output<List<String>> revisions;

  /// Creates a new [Sharedflow].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Sharedflow]. {@macro pulumi_apigee_sharedflow_sharedflow_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Sharedflow(
    String name, {
    SharedflowArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:apigee/sharedflow:Sharedflow',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.configBundle = registerOutput<String>('configBundle');
    this.detectMd5hash = registerOutput<String?>('detectMd5hash');
    this.latestRevisionId = registerOutput<String>('latestRevisionId');
    this.md5hash = registerOutput<String>('md5hash');
    this.metaDatas = registerOutput<List<SharedflowMetaData>>('metaDatas');
    this.name = registerOutput<String>('name');
    this.orgId = registerOutput<String>('orgId');
    this.revisions = registerOutput<List<String>>('revisions');
  }
}
