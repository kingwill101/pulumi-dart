import 'package:pulumi/pulumi.dart';
import 'sitemap_args.dart';

/// Sitemap is a file where you provide information about the pages, videos, and
/// other files on your site, and the relationships between them.
///
///
/// To get more information about Sitemap, see:
///
/// * [API documentation](https://cloud.google.com/generative-ai-app-builder/docs/reference/rest/v1/projects.locations.collections.dataStores.siteSearchEngine.sitemaps)
///
/// ## Example Usage
///
/// ### Discoveryengine Sitemap Basic
///
///
///
///
/// ## Import
///
/// Sitemap can be imported using any of these accepted formats:
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, Sitemap can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:discoveryengine/sitemap:Sitemap default {{name}}
/// ```
class Sitemap extends CustomResource {
  /// Timestamp when the sitemap was created.
  late final Output<String> createTime;

  /// The unique id of the data store.
  late final Output<String> dataStoreId;

  /// The geographic location where the data store should reside. The value can
  /// only be one of "global", "us" and "eu".
  late final Output<String> location;

  /// The unique full resource name of the sitemap. Values are of the format
  /// `projects/{project}/locations/{location}/collections/{collection_id}/dataStores/{data_store_id}/siteSearchEngine/sitemaps/{sitemap_id}`.
  /// This field must be a UTF-8 encoded string with a length limit of 1024
  /// characters.
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The unique id of the sitemap.
  late final Output<String> sitemapId;

  /// Public URI for the sitemap, e.g. "www.example.com/sitemap.xml".
  late final Output<String?> uri;

  Sitemap(
    String name, {
    SitemapArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:discoveryengine/sitemap:Sitemap',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.dataStoreId = registerOutput<String>('dataStoreId');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.sitemapId = registerOutput<String>('sitemapId');
    this.uri = registerOutput<String?>('uri');
  }
}
