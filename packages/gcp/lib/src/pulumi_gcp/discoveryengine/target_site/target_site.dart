import 'package:pulumi/pulumi.dart';
import '../target_site_failure_reason/target_site_failure_reason.dart';
import '../target_site_site_verification_info/target_site_site_verification_info.dart';
import 'target_site_args.dart';

/// TargetSite represents a URI pattern that the users want to confine their
/// search.
///
///
/// To get more information about TargetSite, see:
///
/// * [API documentation](https://cloud.google.com/generative-ai-app-builder/docs/reference/rest/v1/projects.locations.collections.dataStores.siteSearchEngine.targetSites)
///
/// ## Example Usage
///
/// ### Discoveryengine Targetsite Basic
///
///
///
/// ### Discoveryengine Targetsite Advanced
///
///
///
///
/// ## Import
///
/// TargetSite can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/collections/default_collection/dataStores/{{data_store_id}}/siteSearchEngine/targetSites/{{target_site_id}}`
///
/// * `{{project}}/{{location}}/{{data_store_id}}/{{target_site_id}}`
///
/// * `{{location}}/{{data_store_id}}/{{target_site_id}}`
///
/// When using the `pulumi import` command, TargetSite can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:discoveryengine/targetSite:TargetSite default projects/{{project}}/locations/{{location}}/collections/default_collection/dataStores/{{data_store_id}}/siteSearchEngine/targetSites/{{target_site_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:discoveryengine/targetSite:TargetSite default {{project}}/{{location}}/{{data_store_id}}/{{target_site_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:discoveryengine/targetSite:TargetSite default {{location}}/{{data_store_id}}/{{target_site_id}}
/// ```
class TargetSite extends CustomResource {
  /// The unique id of the data store.
  late final Output<String> dataStoreId;

  /// If set to false, a uri_pattern is generated to include all pages whose
  /// address contains the provided_uri_pattern. If set to true, an uri_pattern
  /// is generated to try to be an exact match of the provided_uri_pattern or
  /// just the specific page if the provided_uri_pattern is a specific one.
  /// provided_uri_pattern is always normalized to generate the URI pattern to
  /// be used by the search engine.
  late final Output<bool?> exactMatch;

  /// Site search indexing failure reasons.
  /// Structure is documented below.
  late final Output<List<TargetSiteFailureReason>> failureReasons;

  /// This is system-generated based on the `provided_uri_pattern`.
  late final Output<String> generatedUriPattern;

  /// The indexing status.
  late final Output<String> indexingStatus;

  /// The geographic location where the data store should reside. The value can
  /// only be one of "global", "us" and "eu".
  late final Output<String> location;

  /// The unique full resource name of the target site. Values are of the format
  /// `projects/{project}/locations/{location}/collections/{collection_id}/dataStores/{data_store_id}/siteSearchEngine/targetSites/{target_site_id}`.
  /// This field must be a UTF-8 encoded string with a length limit of 1024
  /// characters.
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The user provided URI pattern from which the `generated_uri_pattern` is
  /// generated.
  late final Output<String> providedUriPattern;

  /// Root domain of the `provided_uri_pattern`.
  late final Output<String> rootDomainUri;

  /// Site ownership and validity verification status.
  /// Structure is documented below.
  late final Output<List<TargetSiteSiteVerificationInfo>> siteVerificationInfos;

  /// The unique id of the target site.
  late final Output<String> targetSiteId;

  /// The possible target site types.
  /// Possible values are: `INCLUDE`, `EXCLUDE`.
  late final Output<String?> type;

  /// The target site's last updated time.
  late final Output<String> updateTime;

  TargetSite(
    String name, {
    TargetSiteArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:discoveryengine/targetSite:TargetSite',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.dataStoreId = registerOutput<String>('dataStoreId');
    this.exactMatch = registerOutput<bool?>('exactMatch');
    this.failureReasons =
        registerOutput<List<TargetSiteFailureReason>>('failureReasons');
    this.generatedUriPattern = registerOutput<String>('generatedUriPattern');
    this.indexingStatus = registerOutput<String>('indexingStatus');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.providedUriPattern = registerOutput<String>('providedUriPattern');
    this.rootDomainUri = registerOutput<String>('rootDomainUri');
    this.siteVerificationInfos =
        registerOutput<List<TargetSiteSiteVerificationInfo>>(
            'siteVerificationInfos');
    this.targetSiteId = registerOutput<String>('targetSiteId');
    this.type = registerOutput<String?>('type');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
