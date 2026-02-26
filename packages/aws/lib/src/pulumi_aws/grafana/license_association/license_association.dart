import 'package:pulumi/pulumi.dart';
import 'license_association_args.dart';

/// Provides an Amazon Managed Grafana workspace license association resource.
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
/// const example = new aws.grafana.LicenseAssociation("example", {
/// licenseType: "ENTERPRISE_FREE_TRIAL",
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
/// example = aws.grafana.LicenseAssociation("example",
/// license_type="ENTERPRISE_FREE_TRIAL",
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
/// var example = new Aws.Grafana.LicenseAssociation("example", new()
/// {
/// LicenseType = "ENTERPRISE_FREE_TRIAL",
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
/// _, err = grafana.NewLicenseAssociation(ctx, "example", &grafana.LicenseAssociationArgs{
/// LicenseType: pulumi.String("ENTERPRISE_FREE_TRIAL"),
/// WorkspaceId: exampleWorkspace.ID(),
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
/// import com.pulumi.aws.grafana.LicenseAssociation;
/// import com.pulumi.aws.grafana.LicenseAssociationArgs;
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
/// var example = new LicenseAssociation("example", LicenseAssociationArgs.builder()
/// .licenseType("ENTERPRISE_FREE_TRIAL")
/// .workspaceId(exampleWorkspace.id())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:grafana:LicenseAssociation
/// properties:
/// licenseType: ENTERPRISE_FREE_TRIAL
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
/// Using `pulumi import`, import Grafana workspace license association using the workspace's <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:grafana/licenseAssociation:LicenseAssociation example g-2054c75a02
/// ```
class LicenseAssociation extends CustomResource {
  /// If <span pulumi-lang-nodejs="`licenseType`" pulumi-lang-dotnet="`LicenseType`" pulumi-lang-go="`licenseType`" pulumi-lang-python="`license_type`" pulumi-lang-yaml="`licenseType`" pulumi-lang-java="`licenseType`">`license_type`</span> is set to `ENTERPRISE_FREE_TRIAL`, this is the expiration date of the free trial.
  late final Output<String> freeTrialExpiration;

  /// A token from Grafana Labs that ties your AWS account with a Grafana Labs account.
  late final Output<String?> grafanaToken;

  /// If <span pulumi-lang-nodejs="`licenseType`" pulumi-lang-dotnet="`LicenseType`" pulumi-lang-go="`licenseType`" pulumi-lang-python="`license_type`" pulumi-lang-yaml="`licenseType`" pulumi-lang-java="`licenseType`">`license_type`</span> is set to `ENTERPRISE`, this is the expiration date of the enterprise license.
  late final Output<String> licenseExpiration;

  /// The type of license for the workspace license association. Valid values are `ENTERPRISE` and `ENTERPRISE_FREE_TRIAL`.
  late final Output<String> licenseType;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The workspace id.
  late final Output<String> workspaceId;

  LicenseAssociation(
    String name, {
    LicenseAssociationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:grafana/licenseAssociation:LicenseAssociation',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.freeTrialExpiration = registerOutput<String>('freeTrialExpiration');
    this.grafanaToken = registerOutput<String?>('grafanaToken');
    this.licenseExpiration = registerOutput<String>('licenseExpiration');
    this.licenseType = registerOutput<String>('licenseType');
    this.region = registerOutput<String>('region');
    this.workspaceId = registerOutput<String>('workspaceId');
  }
}
