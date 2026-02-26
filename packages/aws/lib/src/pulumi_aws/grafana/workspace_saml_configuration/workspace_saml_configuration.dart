import 'package:pulumi/pulumi.dart';
import 'workspace_saml_configuration_args.dart';

/// Provides an Amazon Managed Grafana workspace SAML configuration resource.
///
/// ## Example Usage
///
/// ### Basic configuration
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const assume = new aws.iam.Role("assume", {
/// name: "grafana-assume",
/// assumeRolePolicy: JSON.stringify({
/// Version: "2012-10-17",
/// Statement: [{
/// Action: "sts:AssumeRole",
/// Effect: "Allow",
/// Sid: "",
/// Principal: {
/// Service: "grafana.amazonaws.com",
/// },
/// }],
/// }),
/// });
/// const exampleWorkspace = new aws.grafana.Workspace("example", {
/// accountAccessType: "CURRENT_ACCOUNT",
/// authenticationProviders: ["SAML"],
/// permissionType: "SERVICE_MANAGED",
/// roleArn: assume.arn,
/// });
/// const example = new aws.grafana.WorkspaceSamlConfiguration("example", {
/// editorRoleValues: ["editor"],
/// idpMetadataUrl: "https://my_idp_metadata.url",
/// workspaceId: exampleWorkspace.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// assume = aws.iam.Role("assume",
/// name="grafana-assume",
/// assume_role_policy=json.dumps({
/// "Version": "2012-10-17",
/// "Statement": [{
/// "Action": "sts:AssumeRole",
/// "Effect": "Allow",
/// "Sid": "",
/// "Principal": {
/// "Service": "grafana.amazonaws.com",
/// },
/// }],
/// }))
/// example_workspace = aws.grafana.Workspace("example",
/// account_access_type="CURRENT_ACCOUNT",
/// authentication_providers=["SAML"],
/// permission_type="SERVICE_MANAGED",
/// role_arn=assume.arn)
/// example = aws.grafana.WorkspaceSamlConfiguration("example",
/// editor_role_values=["editor"],
/// idp_metadata_url="https://my_idp_metadata.url",
/// workspace_id=example_workspace.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var assume = new Aws.Iam.Role("assume", new()
/// {
/// Name = "grafana-assume",
/// AssumeRolePolicy = JsonSerializer.Serialize(new Dictionary<string, object?>
/// {
/// ["Version"] = "2012-10-17",
/// ["Statement"] = new[]
/// {
/// new Dictionary<string, object?>
/// {
/// ["Action"] = "sts:AssumeRole",
/// ["Effect"] = "Allow",
/// ["Sid"] = "",
/// ["Principal"] = new Dictionary<string, object?>
/// {
/// ["Service"] = "grafana.amazonaws.com",
/// },
/// },
/// },
/// }),
/// });
///
/// var exampleWorkspace = new Aws.Grafana.Workspace("example", new()
/// {
/// AccountAccessType = "CURRENT_ACCOUNT",
/// AuthenticationProviders = new[]
/// {
/// "SAML",
/// },
/// PermissionType = "SERVICE_MANAGED",
/// RoleArn = assume.Arn,
/// });
///
/// var example = new Aws.Grafana.WorkspaceSamlConfiguration("example", new()
/// {
/// EditorRoleValues = new[]
/// {
/// "editor",
/// },
/// IdpMetadataUrl = "https://my_idp_metadata.url",
/// WorkspaceId = exampleWorkspace.Id,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "encoding/json"
///
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/grafana"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// tmpJSON0, err := json.Marshal(map[string]interface{}{
/// "Version": "2012-10-17",
/// "Statement": []map[string]interface{}{
/// map[string]interface{}{
/// "Action": "sts:AssumeRole",
/// "Effect": "Allow",
/// "Sid":    "",
/// "Principal": map[string]interface{}{
/// "Service": "grafana.amazonaws.com",
/// },
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// json0 := string(tmpJSON0)
/// assume, err := iam.NewRole(ctx, "assume", &iam.RoleArgs{
/// Name:             pulumi.String("grafana-assume"),
/// AssumeRolePolicy: pulumi.String(json0),
/// })
/// if err != nil {
/// return err
/// }
/// exampleWorkspace, err := grafana.NewWorkspace(ctx, "example", &grafana.WorkspaceArgs{
/// AccountAccessType: pulumi.String("CURRENT_ACCOUNT"),
/// AuthenticationProviders: pulumi.StringArray{
/// pulumi.String("SAML"),
/// },
/// PermissionType: pulumi.String("SERVICE_MANAGED"),
/// RoleArn:        assume.Arn,
/// })
/// if err != nil {
/// return err
/// }
/// _, err = grafana.NewWorkspaceSamlConfiguration(ctx, "example", &grafana.WorkspaceSamlConfigurationArgs{
/// EditorRoleValues: pulumi.StringArray{
/// pulumi.String("editor"),
/// },
/// IdpMetadataUrl: pulumi.String("https://my_idp_metadata.url"),
/// WorkspaceId:    exampleWorkspace.ID(),
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
/// import com.pulumi.aws.iam.Role;
/// import com.pulumi.aws.iam.RoleArgs;
/// import com.pulumi.aws.grafana.Workspace;
/// import com.pulumi.aws.grafana.WorkspaceArgs;
/// import com.pulumi.aws.grafana.WorkspaceSamlConfiguration;
/// import com.pulumi.aws.grafana.WorkspaceSamlConfigurationArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
/// var assume = new Role("assume", RoleArgs.builder()
/// .name("grafana-assume")
/// .assumeRolePolicy(serializeJson(
/// jsonObject(
/// jsonProperty("Version", "2012-10-17"),
/// jsonProperty("Statement", jsonArray(jsonObject(
/// jsonProperty("Action", "sts:AssumeRole"),
/// jsonProperty("Effect", "Allow"),
/// jsonProperty("Sid", ""),
/// jsonProperty("Principal", jsonObject(
/// jsonProperty("Service", "grafana.amazonaws.com")
/// ))
/// )))
/// )))
/// .build());
///
/// var exampleWorkspace = new Workspace("exampleWorkspace", WorkspaceArgs.builder()
/// .accountAccessType("CURRENT_ACCOUNT")
/// .authenticationProviders("SAML")
/// .permissionType("SERVICE_MANAGED")
/// .roleArn(assume.arn())
/// .build());
///
/// var example = new WorkspaceSamlConfiguration("example", WorkspaceSamlConfigurationArgs.builder()
/// .editorRoleValues("editor")
/// .idpMetadataUrl("https://my_idp_metadata.url")
/// .workspaceId(exampleWorkspace.id())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:grafana:WorkspaceSamlConfiguration
/// properties:
/// editorRoleValues:
/// - editor
/// idpMetadataUrl: https://my_idp_metadata.url
/// workspaceId: ${exampleWorkspace.id}
/// exampleWorkspace:
/// type: aws:grafana:Workspace
/// name: example
/// properties:
/// accountAccessType: CURRENT_ACCOUNT
/// authenticationProviders:
/// - SAML
/// permissionType: SERVICE_MANAGED
/// roleArn: ${assume.arn}
/// assume:
/// type: aws:iam:Role
/// properties:
/// name: grafana-assume
/// assumeRolePolicy:
/// fn::toJSON:
/// Version: 2012-10-17
/// Statement:
/// - Action: sts:AssumeRole
/// Effect: Allow
/// Sid: ""
/// Principal:
/// Service: grafana.amazonaws.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Grafana Workspace SAML configuration using the workspace's <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:grafana/workspaceSamlConfiguration:WorkspaceSamlConfiguration example g-2054c75a02
/// ```
class WorkspaceSamlConfiguration extends CustomResource {
  /// The admin role values.
  late final Output<List<String>?> adminRoleValues;

  /// The allowed organizations.
  late final Output<List<String>?> allowedOrganizations;

  /// The editor role values.
  late final Output<List<String>> editorRoleValues;

  /// The email assertion.
  late final Output<String> emailAssertion;

  /// The groups assertion.
  late final Output<String?> groupsAssertion;

  /// The IDP Metadata URL. Note that either <span pulumi-lang-nodejs="`idpMetadataUrl`" pulumi-lang-dotnet="`IdpMetadataUrl`" pulumi-lang-go="`idpMetadataUrl`" pulumi-lang-python="`idp_metadata_url`" pulumi-lang-yaml="`idpMetadataUrl`" pulumi-lang-java="`idpMetadataUrl`">`idp_metadata_url`</span> or <span pulumi-lang-nodejs="`idpMetadataXml`" pulumi-lang-dotnet="`IdpMetadataXml`" pulumi-lang-go="`idpMetadataXml`" pulumi-lang-python="`idp_metadata_xml`" pulumi-lang-yaml="`idpMetadataXml`" pulumi-lang-java="`idpMetadataXml`">`idp_metadata_xml`</span> (but not both) must be specified.
  late final Output<String?> idpMetadataUrl;

  /// The IDP Metadata XML. Note that either <span pulumi-lang-nodejs="`idpMetadataUrl`" pulumi-lang-dotnet="`IdpMetadataUrl`" pulumi-lang-go="`idpMetadataUrl`" pulumi-lang-python="`idp_metadata_url`" pulumi-lang-yaml="`idpMetadataUrl`" pulumi-lang-java="`idpMetadataUrl`">`idp_metadata_url`</span> or <span pulumi-lang-nodejs="`idpMetadataXml`" pulumi-lang-dotnet="`IdpMetadataXml`" pulumi-lang-go="`idpMetadataXml`" pulumi-lang-python="`idp_metadata_xml`" pulumi-lang-yaml="`idpMetadataXml`" pulumi-lang-java="`idpMetadataXml`">`idp_metadata_xml`</span> (but not both) must be specified.
  late final Output<String?> idpMetadataXml;

  /// The login assertion.
  late final Output<String> loginAssertion;

  /// The login validity duration.
  late final Output<int> loginValidityDuration;

  /// The name assertion.
  late final Output<String> nameAssertion;

  /// The org assertion.
  late final Output<String?> orgAssertion;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The role assertion.
  late final Output<String?> roleAssertion;

  /// The status of the SAML configuration.
  late final Output<String> status;

  /// The workspace id.
  ///
  /// The following arguments are optional:
  late final Output<String> workspaceId;

  WorkspaceSamlConfiguration(
    String name, {
    WorkspaceSamlConfigurationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:grafana/workspaceSamlConfiguration:WorkspaceSamlConfiguration',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.adminRoleValues = Output.createUnknown<List<String>?>();
    this.allowedOrganizations = Output.createUnknown<List<String>?>();
    this.editorRoleValues = Output.createUnknown<List<String>>();
    this.emailAssertion = Output.createUnknown<String>();
    this.groupsAssertion = Output.createUnknown<String?>();
    this.idpMetadataUrl = Output.createUnknown<String?>();
    this.idpMetadataXml = Output.createUnknown<String?>();
    this.loginAssertion = Output.createUnknown<String>();
    this.loginValidityDuration = Output.createUnknown<int>();
    this.nameAssertion = Output.createUnknown<String>();
    this.orgAssertion = Output.createUnknown<String?>();
    this.region = Output.createUnknown<String>();
    this.roleAssertion = Output.createUnknown<String?>();
    this.status = Output.createUnknown<String>();
    this.workspaceId = Output.createUnknown<String>();
  }
}
