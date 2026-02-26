import 'package:pulumi/pulumi.dart';
import '../reference_list_entry/reference_list_entry.dart';
import '../reference_list_scope_info/reference_list_scope_info.dart';
import 'reference_list_args.dart';

/// Reference lists are user-defined lists of values which users can use in multiple Rules.
///
///
/// To get more information about ReferenceList, see:
///
/// * [API documentation](https://cloud.google.com/chronicle/docs/reference/rest/v1/projects.locations.instances.referenceLists)
/// * How-to Guides
/// * [Google SecOps Guides](https://cloud.google.com/chronicle/docs/secops/secops-overview)
///
/// ## Example Usage
///
/// ### Chronicle Referencelist Basic
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const testScope = new gcp.chronicle.DataAccessScope("test_scope", {
/// location: "us",
/// instance: "00000000-0000-0000-0000-000000000000",
/// dataAccessScopeId: "scope-id",
/// description: "test scope description",
/// allowedDataAccessLabels: [{
/// logType: "GCP_CLOUDAUDIT",
/// }],
/// });
/// const example = new gcp.chronicle.ReferenceList("example", {
/// location: "us",
/// instance: "00000000-0000-0000-0000-000000000000",
/// referenceListId: "reference_list_id",
/// description: "referencelist-description",
/// entries: [{
/// value: "referencelist-entry-value",
/// }],
/// syntaxType: "REFERENCE_LIST_SYNTAX_TYPE_PLAIN_TEXT_STRING",
/// scopeInfos: [{
/// referenceListScope: {
/// scopeNames: [testScope.name],
/// },
/// }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// test_scope = gcp.chronicle.DataAccessScope("test_scope",
/// location="us",
/// instance="00000000-0000-0000-0000-000000000000",
/// data_access_scope_id="scope-id",
/// description="test scope description",
/// allowed_data_access_labels=[{
/// "log_type": "GCP_CLOUDAUDIT",
/// }])
/// example = gcp.chronicle.ReferenceList("example",
/// location="us",
/// instance="00000000-0000-0000-0000-000000000000",
/// reference_list_id="reference_list_id",
/// description="referencelist-description",
/// entries=[{
/// "value": "referencelist-entry-value",
/// }],
/// syntax_type="REFERENCE_LIST_SYNTAX_TYPE_PLAIN_TEXT_STRING",
/// scope_infos=[{
/// "reference_list_scope": {
/// "scope_names": [test_scope.name],
/// },
/// }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var testScope = new Gcp.Chronicle.DataAccessScope("test_scope", new()
/// {
/// Location = "us",
/// Instance = "00000000-0000-0000-0000-000000000000",
/// DataAccessScopeId = "scope-id",
/// Description = "test scope description",
/// AllowedDataAccessLabels = new[]
/// {
/// new Gcp.Chronicle.Inputs.DataAccessScopeAllowedDataAccessLabelArgs
/// {
/// LogType = "GCP_CLOUDAUDIT",
/// },
/// },
/// });
///
/// var example = new Gcp.Chronicle.ReferenceList("example", new()
/// {
/// Location = "us",
/// Instance = "00000000-0000-0000-0000-000000000000",
/// ReferenceListId = "reference_list_id",
/// Description = "referencelist-description",
/// Entries = new[]
/// {
/// new Gcp.Chronicle.Inputs.ReferenceListEntryArgs
/// {
/// Value = "referencelist-entry-value",
/// },
/// },
/// SyntaxType = "REFERENCE_LIST_SYNTAX_TYPE_PLAIN_TEXT_STRING",
/// ScopeInfos = new[]
/// {
/// new Gcp.Chronicle.Inputs.ReferenceListScopeInfoArgs
/// {
/// ReferenceListScope = new Gcp.Chronicle.Inputs.ReferenceListScopeInfoReferenceListScopeArgs
/// {
/// ScopeNames = new[]
/// {
/// testScope.Name,
/// },
/// },
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/chronicle"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// testScope, err := chronicle.NewDataAccessScope(ctx, "test_scope", &chronicle.DataAccessScopeArgs{
/// Location:          pulumi.String("us"),
/// Instance:          pulumi.String("00000000-0000-0000-0000-000000000000"),
/// DataAccessScopeId: pulumi.String("scope-id"),
/// Description:       pulumi.String("test scope description"),
/// AllowedDataAccessLabels: chronicle.DataAccessScopeAllowedDataAccessLabelArray{
/// &chronicle.DataAccessScopeAllowedDataAccessLabelArgs{
/// LogType: pulumi.String("GCP_CLOUDAUDIT"),
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// _, err = chronicle.NewReferenceList(ctx, "example", &chronicle.ReferenceListArgs{
/// Location:        pulumi.String("us"),
/// Instance:        pulumi.String("00000000-0000-0000-0000-000000000000"),
/// ReferenceListId: pulumi.String("reference_list_id"),
/// Description:     pulumi.String("referencelist-description"),
/// Entries: chronicle.ReferenceListEntryArray{
/// &chronicle.ReferenceListEntryArgs{
/// Value: pulumi.String("referencelist-entry-value"),
/// },
/// },
/// SyntaxType: pulumi.String("REFERENCE_LIST_SYNTAX_TYPE_PLAIN_TEXT_STRING"),
/// ScopeInfos: chronicle.ReferenceListScopeInfoArray{
/// &chronicle.ReferenceListScopeInfoArgs{
/// ReferenceListScope: &chronicle.ReferenceListScopeInfoReferenceListScopeArgs{
/// ScopeNames: pulumi.StringArray{
/// testScope.Name,
/// },
/// },
/// },
/// },
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
/// import com.pulumi.gcp.chronicle.DataAccessScope;
/// import com.pulumi.gcp.chronicle.DataAccessScopeArgs;
/// import com.pulumi.gcp.chronicle.inputs.DataAccessScopeAllowedDataAccessLabelArgs;
/// import com.pulumi.gcp.chronicle.ReferenceList;
/// import com.pulumi.gcp.chronicle.ReferenceListArgs;
/// import com.pulumi.gcp.chronicle.inputs.ReferenceListEntryArgs;
/// import com.pulumi.gcp.chronicle.inputs.ReferenceListScopeInfoArgs;
/// import com.pulumi.gcp.chronicle.inputs.ReferenceListScopeInfoReferenceListScopeArgs;
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
/// var testScope = new DataAccessScope("testScope", DataAccessScopeArgs.builder()
/// .location("us")
/// .instance("00000000-0000-0000-0000-000000000000")
/// .dataAccessScopeId("scope-id")
/// .description("test scope description")
/// .allowedDataAccessLabels(DataAccessScopeAllowedDataAccessLabelArgs.builder()
/// .logType("GCP_CLOUDAUDIT")
/// .build())
/// .build());
///
/// var example = new ReferenceList("example", ReferenceListArgs.builder()
/// .location("us")
/// .instance("00000000-0000-0000-0000-000000000000")
/// .referenceListId("reference_list_id")
/// .description("referencelist-description")
/// .entries(ReferenceListEntryArgs.builder()
/// .value("referencelist-entry-value")
/// .build())
/// .syntaxType("REFERENCE_LIST_SYNTAX_TYPE_PLAIN_TEXT_STRING")
/// .scopeInfos(ReferenceListScopeInfoArgs.builder()
/// .referenceListScope(ReferenceListScopeInfoReferenceListScopeArgs.builder()
/// .scopeNames(testScope.name())
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// testScope:
/// type: gcp:chronicle:DataAccessScope
/// name: test_scope
/// properties:
/// location: us
/// instance: 00000000-0000-0000-0000-000000000000
/// dataAccessScopeId: scope-id
/// description: test scope description
/// allowedDataAccessLabels:
/// - logType: GCP_CLOUDAUDIT
/// example:
/// type: gcp:chronicle:ReferenceList
/// properties:
/// location: us
/// instance: 00000000-0000-0000-0000-000000000000
/// referenceListId: reference_list_id
/// description: referencelist-description
/// entries:
/// - value: referencelist-entry-value
/// syntaxType: REFERENCE_LIST_SYNTAX_TYPE_PLAIN_TEXT_STRING
/// scopeInfos:
/// - referenceListScope:
/// scopeNames:
/// - ${testScope.name}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// ReferenceList can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/instances/{{instance}}/referenceLists/{{reference_list_id}}`
///
/// * `{{project}}/{{location}}/{{instance}}/{{reference_list_id}}`
///
/// * `{{location}}/{{instance}}/{{reference_list_id}}`
///
/// When using the `pulumi import` command, ReferenceList can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:chronicle/referenceList:ReferenceList default projects/{{project}}/locations/{{location}}/instances/{{instance}}/referenceLists/{{reference_list_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:chronicle/referenceList:ReferenceList default {{project}}/{{location}}/{{instance}}/{{reference_list_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:chronicle/referenceList:ReferenceList default {{location}}/{{instance}}/{{reference_list_id}}
/// ```
class ReferenceList extends CustomResource {
  /// Required. A user-provided description of the reference list.
  late final Output<String> description;

  /// Output only. The unique display name of the reference list.
  late final Output<String> displayName;

  /// Required. The entries of the reference list.
  /// When listed, they are returned in the order that was specified at creation
  /// or update. The combined size of the values of the reference list may not
  /// exceed 6MB.
  /// This is returned only when the view is REFERENCE_LIST_VIEW_FULL.
  /// Structure is documented below.
  late final Output<List<ReferenceListEntry>> entries;

  /// The unique identifier for the Chronicle instance, which is the same as the customer ID.
  late final Output<String> instance;

  /// The location of the resource. This is the geographical region where the Chronicle instance resides, such as "us" or "europe-west2".
  late final Output<String> location;

  /// Output only. The resource name of the reference list.
  /// Format:
  /// projects/{project}/locations/{location}/instances/{instance}/referenceLists/{reference_list}
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// Required. The ID to use for the reference list. This is also the display name for
  /// the reference list. It must satisfy the following requirements:
  /// - Starts with letter.
  /// - Contains only letters, numbers and underscore.
  /// - Has length < 256.
  /// - Must be unique.
  late final Output<String> referenceListId;

  /// Output only. The timestamp when the reference list was last updated.
  late final Output<String> revisionCreateTime;

  /// Output only. The count of self-authored rules using the reference list.
  late final Output<int> ruleAssociationsCount;

  /// Output only. The resource names for the associated self-authored Rules that use this
  /// reference list.
  /// This is returned only when the view is REFERENCE_LIST_VIEW_FULL.
  late final Output<List<String>> rules;

  /// ScopeInfo specifies the scope info of the reference list.
  /// Structure is documented below.
  late final Output<List<ReferenceListScopeInfo>?> scopeInfos;

  /// Possible values:
  /// REFERENCE_LIST_SYNTAX_TYPE_PLAIN_TEXT_STRING
  /// REFERENCE_LIST_SYNTAX_TYPE_REGEX
  /// REFERENCE_LIST_SYNTAX_TYPE_CIDR
  late final Output<String> syntaxType;

  ReferenceList(
    String name, {
    ReferenceListArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:chronicle/referenceList:ReferenceList',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.description = Output.createUnknown<String>();
    this.displayName = Output.createUnknown<String>();
    this.entries = Output.createUnknown<List<ReferenceListEntry>>();
    this.instance = Output.createUnknown<String>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.referenceListId = Output.createUnknown<String>();
    this.revisionCreateTime = Output.createUnknown<String>();
    this.ruleAssociationsCount = Output.createUnknown<int>();
    this.rules = Output.createUnknown<List<String>>();
    this.scopeInfos = Output.createUnknown<List<ReferenceListScopeInfo>?>();
    this.syntaxType = Output.createUnknown<String>();
  }
}
