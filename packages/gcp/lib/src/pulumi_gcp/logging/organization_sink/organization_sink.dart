import 'package:pulumi/pulumi.dart';
import '../organization_sink_bigquery_options/organization_sink_bigquery_options.dart';
import '../organization_sink_exclusion/organization_sink_exclusion.dart';
import 'organization_sink_args.dart';

/// Manages an organization-level logging sink. For more information see:
/// * [API documentation](https://cloud.google.com/logging/docs/reference/v2/rest/v2/organizations.sinks)
/// * How-to Guides
/// * [Exporting Logs](https://cloud.google.com/logging/docs/export)
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const log_bucket = new gcp.storage.Bucket("log-bucket", {
/// name: "organization-logging-bucket",
/// location: "US",
/// });
/// const my_sink = new gcp.logging.OrganizationSink("my-sink", {
/// name: "my-sink",
/// description: "some explanation on what this is",
/// orgId: "123456789",
/// destination: pulumi.interpolate`storage.googleapis.com/${log_bucket.name}`,
/// filter: "resource.type = gce_instance AND severity >= WARNING",
/// });
/// const log_writer = new gcp.projects.IAMMember("log-writer", {
/// project: "your-project-id",
/// role: "roles/storage.objectCreator",
/// member: my_sink.writerIdentity,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// log_bucket = gcp.storage.Bucket("log-bucket",
/// name="organization-logging-bucket",
/// location="US")
/// my_sink = gcp.logging.OrganizationSink("my-sink",
/// name="my-sink",
/// description="some explanation on what this is",
/// org_id="123456789",
/// destination=log_bucket.name.apply(lambda name: f"storage.googleapis.com/{name}"),
/// filter="resource.type = gce_instance AND severity >= WARNING")
/// log_writer = gcp.projects.IAMMember("log-writer",
/// project="your-project-id",
/// role="roles/storage.objectCreator",
/// member=my_sink.writer_identity)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var log_bucket = new Gcp.Storage.Bucket("log-bucket", new()
/// {
/// Name = "organization-logging-bucket",
/// Location = "US",
/// });
///
/// var my_sink = new Gcp.Logging.OrganizationSink("my-sink", new()
/// {
/// Name = "my-sink",
/// Description = "some explanation on what this is",
/// OrgId = "123456789",
/// Destination = log_bucket.Name.Apply(name => $"storage.googleapis.com/{name}"),
/// Filter = "resource.type = gce_instance AND severity >= WARNING",
/// });
///
/// var log_writer = new Gcp.Projects.IAMMember("log-writer", new()
/// {
/// Project = "your-project-id",
/// Role = "roles/storage.objectCreator",
/// Member = my_sink.WriterIdentity,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "fmt"
///
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/logging"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/projects"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// log_bucket, err := storage.NewBucket(ctx, "log-bucket", &storage.BucketArgs{
/// Name:     pulumi.String("organization-logging-bucket"),
/// Location: pulumi.String("US"),
/// })
/// if err != nil {
/// return err
/// }
/// my_sink, err := logging.NewOrganizationSink(ctx, "my-sink", &logging.OrganizationSinkArgs{
/// Name:        pulumi.String("my-sink"),
/// Description: pulumi.String("some explanation on what this is"),
/// OrgId:       pulumi.String("123456789"),
/// Destination: log_bucket.Name.ApplyT(func(name string) (string, error) {
/// return fmt.Sprintf("storage.googleapis.com/%v", name), nil
/// }).(pulumi.StringOutput),
/// Filter: pulumi.String("resource.type = gce_instance AND severity >= WARNING"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = projects.NewIAMMember(ctx, "log-writer", &projects.IAMMemberArgs{
/// Project: pulumi.String("your-project-id"),
/// Role:    pulumi.String("roles/storage.objectCreator"),
/// Member:  my_sink.WriterIdentity,
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
/// import com.pulumi.gcp.storage.Bucket;
/// import com.pulumi.gcp.storage.BucketArgs;
/// import com.pulumi.gcp.logging.OrganizationSink;
/// import com.pulumi.gcp.logging.OrganizationSinkArgs;
/// import com.pulumi.gcp.projects.IAMMember;
/// import com.pulumi.gcp.projects.IAMMemberArgs;
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
/// var log_bucket = new Bucket("log-bucket", BucketArgs.builder()
/// .name("organization-logging-bucket")
/// .location("US")
/// .build());
///
/// var my_sink = new OrganizationSink("my-sink", OrganizationSinkArgs.builder()
/// .name("my-sink")
/// .description("some explanation on what this is")
/// .orgId("123456789")
/// .destination(log_bucket.name().applyValue(_name -> String.format("storage.googleapis.com/%s", _name)))
/// .filter("resource.type = gce_instance AND severity >= WARNING")
/// .build());
///
/// var log_writer = new IAMMember("log-writer", IAMMemberArgs.builder()
/// .project("your-project-id")
/// .role("roles/storage.objectCreator")
/// .member(my_sink.writerIdentity())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// my-sink:
/// type: gcp:logging:OrganizationSink
/// properties:
/// name: my-sink
/// description: some explanation on what this is
/// orgId: '123456789'
/// destination: storage.googleapis.com/${["log-bucket"].name}
/// filter: resource.type = gce_instance AND severity >= WARNING
/// log-bucket:
/// type: gcp:storage:Bucket
/// properties:
/// name: organization-logging-bucket
/// location: US
/// log-writer:
/// type: gcp:projects:IAMMember
/// properties:
/// project: your-project-id
/// role: roles/storage.objectCreator
/// member: ${["my-sink"].writerIdentity}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Organization-level logging sinks can be imported using this format:
///
/// * `organizations/{{organization_id}}/sinks/{{sink_id}}`
///
/// When using the `pulumi import` command, organization-level logging sinks can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:logging/organizationSink:OrganizationSink default organizations/{{organization_id}}/sinks/{{sink_id}}
/// ```
class OrganizationSink extends CustomResource {
  /// Options that affect sinks exporting data to BigQuery. Structure documented below.
  late final Output<OrganizationSinkBigqueryOptions> bigqueryOptions;

  /// A description of this sink. The maximum length of the description is 8000 characters.
  late final Output<String?> description;

  /// The destination of the sink (or, in other words, where logs are written to). Can be a Cloud Storage bucket, a PubSub topic, a BigQuery dataset, a Cloud Logging bucket, or a Google Cloud project. Examples:
  ///
  /// - `storage.googleapis.com/[GCS_BUCKET]`
  /// - `bigquery.googleapis.com/projects/[PROJECT_ID]/datasets/[DATASET]`
  /// - `pubsub.googleapis.com/projects/[PROJECT_ID]/topics/[TOPIC_ID]`
  /// - `logging.googleapis.com/projects/[PROJECT_ID]/locations/global/buckets/[BUCKET_ID]`
  /// - `logging.googleapis.com/projects/[PROJECT_ID]`
  ///
  /// The writer associated with the sink must have access to write to the above resource.
  late final Output<String> destination;

  /// If set to True, then this sink is disabled and it does not export any log entries.
  late final Output<bool?> disabled;

  /// Log entries that match any of the exclusion filters will not be exported. If a log entry is matched by both <span pulumi-lang-nodejs="`filter`" pulumi-lang-dotnet="`Filter`" pulumi-lang-go="`filter`" pulumi-lang-python="`filter`" pulumi-lang-yaml="`filter`" pulumi-lang-java="`filter`">`filter`</span> and one of `exclusions.filter`, it will not be exported.  Can be repeated multiple times for multiple exclusions. Structure is documented below.
  late final Output<List<OrganizationSinkExclusion>?> exclusions;

  /// The filter to apply when exporting logs. Only log entries that match the filter are exported.
  /// See [Advanced Log Filters](https://cloud.google.com/logging/docs/view/advanced_filters) for information on how to
  /// write a filter.
  late final Output<String?> filter;

  /// Whether or not to include child folders or projects in the sink export. If true, logs
  /// associated with child projects are also exported; otherwise only logs relating to the provided organization are included.
  late final Output<bool?> includeChildren;

  /// Whether or not to intercept logs from child projects. If true, matching logs will not
  /// match with sinks in child resources, except _Required sinks. This sink will be visible to child resources when listing sinks.
  late final Output<bool?> interceptChildren;

  /// The name of the logging sink.
  late final Output<String> name;

  /// The numeric ID of the organization to be exported to the sink.
  late final Output<String> orgId;

  /// The identity associated with this sink. This identity must be granted write access to the
  /// configured <span pulumi-lang-nodejs="`destination`" pulumi-lang-dotnet="`Destination`" pulumi-lang-go="`destination`" pulumi-lang-python="`destination`" pulumi-lang-yaml="`destination`" pulumi-lang-java="`destination`">`destination`</span>.
  late final Output<String> writerIdentity;

  OrganizationSink(
    String name, {
    OrganizationSinkArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:logging/organizationSink:OrganizationSink',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.bigqueryOptions =
        registerOutput<OrganizationSinkBigqueryOptions>('bigqueryOptions');
    this.description = registerOutput<String?>('description');
    this.destination = registerOutput<String>('destination');
    this.disabled = registerOutput<bool?>('disabled');
    this.exclusions =
        registerOutput<List<OrganizationSinkExclusion>?>('exclusions');
    this.filter = registerOutput<String?>('filter');
    this.includeChildren = registerOutput<bool?>('includeChildren');
    this.interceptChildren = registerOutput<bool?>('interceptChildren');
    this.name = registerOutput<String>('name');
    this.orgId = registerOutput<String>('orgId');
    this.writerIdentity = registerOutput<String>('writerIdentity');
  }
}
