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
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const advanced = new gcp.discoveryengine.DataStore("advanced", {
/// location: "global",
/// dataStoreId: "data-store-id",
/// displayName: "tf-test-advanced-site-search-datastore",
/// industryVertical: "GENERIC",
/// contentConfig: "PUBLIC_WEBSITE",
/// solutionTypes: ["SOLUTION_TYPE_SEARCH"],
/// createAdvancedSiteSearch: true,
/// skipDefaultSchemaCreation: false,
/// });
/// const basic = new gcp.discoveryengine.Sitemap("basic", {
/// location: advanced.location,
/// dataStoreId: advanced.dataStoreId,
/// uri: "https://www.test.com/sitemap.xml",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// advanced = gcp.discoveryengine.DataStore("advanced",
/// location="global",
/// data_store_id="data-store-id",
/// display_name="tf-test-advanced-site-search-datastore",
/// industry_vertical="GENERIC",
/// content_config="PUBLIC_WEBSITE",
/// solution_types=["SOLUTION_TYPE_SEARCH"],
/// create_advanced_site_search=True,
/// skip_default_schema_creation=False)
/// basic = gcp.discoveryengine.Sitemap("basic",
/// location=advanced.location,
/// data_store_id=advanced.data_store_id,
/// uri="https://www.test.com/sitemap.xml")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var advanced = new Gcp.DiscoveryEngine.DataStore("advanced", new()
/// {
/// Location = "global",
/// DataStoreId = "data-store-id",
/// DisplayName = "tf-test-advanced-site-search-datastore",
/// IndustryVertical = "GENERIC",
/// ContentConfig = "PUBLIC_WEBSITE",
/// SolutionTypes = new[]
/// {
/// "SOLUTION_TYPE_SEARCH",
/// },
/// CreateAdvancedSiteSearch = true,
/// SkipDefaultSchemaCreation = false,
/// });
///
/// var basic = new Gcp.DiscoveryEngine.Sitemap("basic", new()
/// {
/// Location = advanced.Location,
/// DataStoreId = advanced.DataStoreId,
/// Uri = "https://www.test.com/sitemap.xml",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/discoveryengine"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// advanced, err := discoveryengine.NewDataStore(ctx, "advanced", &discoveryengine.DataStoreArgs{
/// Location:         pulumi.String("global"),
/// DataStoreId:      pulumi.String("data-store-id"),
/// DisplayName:      pulumi.String("tf-test-advanced-site-search-datastore"),
/// IndustryVertical: pulumi.String("GENERIC"),
/// ContentConfig:    pulumi.String("PUBLIC_WEBSITE"),
/// SolutionTypes: pulumi.StringArray{
/// pulumi.String("SOLUTION_TYPE_SEARCH"),
/// },
/// CreateAdvancedSiteSearch:  pulumi.Bool(true),
/// SkipDefaultSchemaCreation: pulumi.Bool(false),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = discoveryengine.NewSitemap(ctx, "basic", &discoveryengine.SitemapArgs{
/// Location:    advanced.Location,
/// DataStoreId: advanced.DataStoreId,
/// Uri:         pulumi.String("https://www.test.com/sitemap.xml"),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.discoveryengine.DataStore;
/// import com.pulumi.gcp.discoveryengine.DataStoreArgs;
/// import com.pulumi.gcp.discoveryengine.Sitemap;
/// import com.pulumi.gcp.discoveryengine.SitemapArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var advanced = new DataStore("advanced", DataStoreArgs.builder()
/// .location("global")
/// .dataStoreId("data-store-id")
/// .displayName("tf-test-advanced-site-search-datastore")
/// .industryVertical("GENERIC")
/// .contentConfig("PUBLIC_WEBSITE")
/// .solutionTypes("SOLUTION_TYPE_SEARCH")
/// .createAdvancedSiteSearch(true)
/// .skipDefaultSchemaCreation(false)
/// .build());
///
/// var basic = new Sitemap("basic", SitemapArgs.builder()
/// .location(advanced.location())
/// .dataStoreId(advanced.dataStoreId())
/// .uri("https://www.test.com/sitemap.xml")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// basic:
/// type: gcp:discoveryengine:Sitemap
/// properties:
/// location: ${advanced.location}
/// dataStoreId: ${advanced.dataStoreId}
/// uri: https://www.test.com/sitemap.xml
/// advanced:
/// type: gcp:discoveryengine:DataStore
/// properties:
/// location: global
/// dataStoreId: data-store-id
/// displayName: tf-test-advanced-site-search-datastore
/// industryVertical: GENERIC
/// contentConfig: PUBLIC_WEBSITE
/// solutionTypes:
/// - SOLUTION_TYPE_SEARCH
/// createAdvancedSiteSearch: true
/// skipDefaultSchemaCreation: false
/// ```
/// <!--End PulumiCodeChooser -->
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
    this.createTime = Output.createUnknown<String>();
    this.dataStoreId = Output.createUnknown<String>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.sitemapId = Output.createUnknown<String>();
    this.uri = Output.createUnknown<String?>();
  }
}
