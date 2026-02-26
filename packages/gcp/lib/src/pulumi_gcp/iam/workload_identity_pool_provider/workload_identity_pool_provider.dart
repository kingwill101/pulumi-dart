import 'package:pulumi/pulumi.dart';
import '../workload_identity_pool_provider_aws/workload_identity_pool_provider_aws.dart';
import '../workload_identity_pool_provider_oidc/workload_identity_pool_provider_oidc.dart';
import '../workload_identity_pool_provider_saml/workload_identity_pool_provider_saml.dart';
import '../workload_identity_pool_provider_x509/workload_identity_pool_provider_x509.dart';
import 'workload_identity_pool_provider_args.dart';

/// A configuration for an external identity provider.
///
///
/// To get more information about WorkloadIdentityPoolProvider, see:
///
/// * [API documentation](https://cloud.google.com/iam/docs/reference/rest/v1/projects.locations.workloadIdentityPools.providers)
/// * How-to Guides
/// * [Managing workload identity providers](https://cloud.google.com/iam/docs/manage-workload-identity-pools-providers#managing_workload_identity_providers)
///
/// ## Example Usage
///
/// ### Iam Workload Identity Pool Provider Aws Basic
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const pool = new gcp.iam.WorkloadIdentityPool("pool", {workloadIdentityPoolId: "example-pool"});
/// const example = new gcp.iam.WorkloadIdentityPoolProvider("example", {
/// workloadIdentityPoolId: pool.workloadIdentityPoolId,
/// workloadIdentityPoolProviderId: "example-prvdr",
/// aws: {
/// accountId: "999999999999",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// pool = gcp.iam.WorkloadIdentityPool("pool", workload_identity_pool_id="example-pool")
/// example = gcp.iam.WorkloadIdentityPoolProvider("example",
/// workload_identity_pool_id=pool.workload_identity_pool_id,
/// workload_identity_pool_provider_id="example-prvdr",
/// aws={
/// "account_id": "999999999999",
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var pool = new Gcp.Iam.WorkloadIdentityPool("pool", new()
/// {
/// WorkloadIdentityPoolId = "example-pool",
/// });
///
/// var example = new Gcp.Iam.WorkloadIdentityPoolProvider("example", new()
/// {
/// WorkloadIdentityPoolId = pool.WorkloadIdentityPoolId,
/// WorkloadIdentityPoolProviderId = "example-prvdr",
/// Aws = new Gcp.Iam.Inputs.WorkloadIdentityPoolProviderAwsArgs
/// {
/// AccountId = "999999999999",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iam"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// pool, err := iam.NewWorkloadIdentityPool(ctx, "pool", &iam.WorkloadIdentityPoolArgs{
/// WorkloadIdentityPoolId: pulumi.String("example-pool"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = iam.NewWorkloadIdentityPoolProvider(ctx, "example", &iam.WorkloadIdentityPoolProviderArgs{
/// WorkloadIdentityPoolId:         pool.WorkloadIdentityPoolId,
/// WorkloadIdentityPoolProviderId: pulumi.String("example-prvdr"),
/// Aws: &iam.WorkloadIdentityPoolProviderAwsArgs{
/// AccountId: pulumi.String("999999999999"),
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
/// import com.pulumi.gcp.iam.WorkloadIdentityPool;
/// import com.pulumi.gcp.iam.WorkloadIdentityPoolArgs;
/// import com.pulumi.gcp.iam.WorkloadIdentityPoolProvider;
/// import com.pulumi.gcp.iam.WorkloadIdentityPoolProviderArgs;
/// import com.pulumi.gcp.iam.inputs.WorkloadIdentityPoolProviderAwsArgs;
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
/// var pool = new WorkloadIdentityPool("pool", WorkloadIdentityPoolArgs.builder()
/// .workloadIdentityPoolId("example-pool")
/// .build());
///
/// var example = new WorkloadIdentityPoolProvider("example", WorkloadIdentityPoolProviderArgs.builder()
/// .workloadIdentityPoolId(pool.workloadIdentityPoolId())
/// .workloadIdentityPoolProviderId("example-prvdr")
/// .aws(WorkloadIdentityPoolProviderAwsArgs.builder()
/// .accountId("999999999999")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// pool:
/// type: gcp:iam:WorkloadIdentityPool
/// properties:
/// workloadIdentityPoolId: example-pool
/// example:
/// type: gcp:iam:WorkloadIdentityPoolProvider
/// properties:
/// workloadIdentityPoolId: ${pool.workloadIdentityPoolId}
/// workloadIdentityPoolProviderId: example-prvdr
/// aws:
/// accountId: '999999999999'
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Iam Workload Identity Pool Provider Aws Full
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const pool = new gcp.iam.WorkloadIdentityPool("pool", {workloadIdentityPoolId: "example-pool"});
/// const example = new gcp.iam.WorkloadIdentityPoolProvider("example", {
/// workloadIdentityPoolId: pool.workloadIdentityPoolId,
/// workloadIdentityPoolProviderId: "example-prvdr",
/// displayName: "Name of provider",
/// description: "AWS identity pool provider for automated test",
/// disabled: true,
/// attributeCondition: "attribute.aws_role==\"arn:aws:sts::999999999999:assumed-role/stack-eu-central-1-lambdaRole\"",
/// attributeMapping: {
/// "google.subject": "assertion.arn",
/// "attribute.aws_account": "assertion.account",
/// "attribute.environment": "assertion.arn.contains(\":instance-profile/Production\") ? \"prod\" : \"test\"",
/// },
/// aws: {
/// accountId: "999999999999",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// pool = gcp.iam.WorkloadIdentityPool("pool", workload_identity_pool_id="example-pool")
/// example = gcp.iam.WorkloadIdentityPoolProvider("example",
/// workload_identity_pool_id=pool.workload_identity_pool_id,
/// workload_identity_pool_provider_id="example-prvdr",
/// display_name="Name of provider",
/// description="AWS identity pool provider for automated test",
/// disabled=True,
/// attribute_condition="attribute.aws_role==\"arn:aws:sts::999999999999:assumed-role/stack-eu-central-1-lambdaRole\"",
/// attribute_mapping={
/// "google.subject": "assertion.arn",
/// "attribute.aws_account": "assertion.account",
/// "attribute.environment": "assertion.arn.contains(\":instance-profile/Production\") ? \"prod\" : \"test\"",
/// },
/// aws={
/// "account_id": "999999999999",
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var pool = new Gcp.Iam.WorkloadIdentityPool("pool", new()
/// {
/// WorkloadIdentityPoolId = "example-pool",
/// });
///
/// var example = new Gcp.Iam.WorkloadIdentityPoolProvider("example", new()
/// {
/// WorkloadIdentityPoolId = pool.WorkloadIdentityPoolId,
/// WorkloadIdentityPoolProviderId = "example-prvdr",
/// DisplayName = "Name of provider",
/// Description = "AWS identity pool provider for automated test",
/// Disabled = true,
/// AttributeCondition = "attribute.aws_role==\"arn:aws:sts::999999999999:assumed-role/stack-eu-central-1-lambdaRole\"",
/// AttributeMapping =
/// {
/// { "google.subject", "assertion.arn" },
/// { "attribute.aws_account", "assertion.account" },
/// { "attribute.environment", "assertion.arn.contains(\":instance-profile/Production\") ? \"prod\" : \"test\"" },
/// },
/// Aws = new Gcp.Iam.Inputs.WorkloadIdentityPoolProviderAwsArgs
/// {
/// AccountId = "999999999999",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iam"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// pool, err := iam.NewWorkloadIdentityPool(ctx, "pool", &iam.WorkloadIdentityPoolArgs{
/// WorkloadIdentityPoolId: pulumi.String("example-pool"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = iam.NewWorkloadIdentityPoolProvider(ctx, "example", &iam.WorkloadIdentityPoolProviderArgs{
/// WorkloadIdentityPoolId:         pool.WorkloadIdentityPoolId,
/// WorkloadIdentityPoolProviderId: pulumi.String("example-prvdr"),
/// DisplayName:                    pulumi.String("Name of provider"),
/// Description:                    pulumi.String("AWS identity pool provider for automated test"),
/// Disabled:                       pulumi.Bool(true),
/// AttributeCondition:             pulumi.String("attribute.aws_role==\"arn:aws:sts::999999999999:assumed-role/stack-eu-central-1-lambdaRole\""),
/// AttributeMapping: pulumi.StringMap{
/// "google.subject":        pulumi.String("assertion.arn"),
/// "attribute.aws_account": pulumi.String("assertion.account"),
/// "attribute.environment": pulumi.String("assertion.arn.contains(\":instance-profile/Production\") ? \"prod\" : \"test\""),
/// },
/// Aws: &iam.WorkloadIdentityPoolProviderAwsArgs{
/// AccountId: pulumi.String("999999999999"),
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
/// import com.pulumi.gcp.iam.WorkloadIdentityPool;
/// import com.pulumi.gcp.iam.WorkloadIdentityPoolArgs;
/// import com.pulumi.gcp.iam.WorkloadIdentityPoolProvider;
/// import com.pulumi.gcp.iam.WorkloadIdentityPoolProviderArgs;
/// import com.pulumi.gcp.iam.inputs.WorkloadIdentityPoolProviderAwsArgs;
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
/// var pool = new WorkloadIdentityPool("pool", WorkloadIdentityPoolArgs.builder()
/// .workloadIdentityPoolId("example-pool")
/// .build());
///
/// var example = new WorkloadIdentityPoolProvider("example", WorkloadIdentityPoolProviderArgs.builder()
/// .workloadIdentityPoolId(pool.workloadIdentityPoolId())
/// .workloadIdentityPoolProviderId("example-prvdr")
/// .displayName("Name of provider")
/// .description("AWS identity pool provider for automated test")
/// .disabled(true)
/// .attributeCondition("attribute.aws_role==\"arn:aws:sts::999999999999:assumed-role/stack-eu-central-1-lambdaRole\"")
/// .attributeMapping(Map.ofEntries(
/// Map.entry("google.subject", "assertion.arn"),
/// Map.entry("attribute.aws_account", "assertion.account"),
/// Map.entry("attribute.environment", "assertion.arn.contains(\":instance-profile/Production\") ? \"prod\" : \"test\"")
/// ))
/// .aws(WorkloadIdentityPoolProviderAwsArgs.builder()
/// .accountId("999999999999")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// pool:
/// type: gcp:iam:WorkloadIdentityPool
/// properties:
/// workloadIdentityPoolId: example-pool
/// example:
/// type: gcp:iam:WorkloadIdentityPoolProvider
/// properties:
/// workloadIdentityPoolId: ${pool.workloadIdentityPoolId}
/// workloadIdentityPoolProviderId: example-prvdr
/// displayName: Name of provider
/// description: AWS identity pool provider for automated test
/// disabled: true
/// attributeCondition: attribute.aws_role=="arn:aws:sts::999999999999:assumed-role/stack-eu-central-1-lambdaRole"
/// attributeMapping:
/// google.subject: assertion.arn
/// attribute.aws_account: assertion.account
/// attribute.environment: 'assertion.arn.contains(":instance-profile/Production") ? "prod" : "test"'
/// aws:
/// accountId: '999999999999'
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Iam Workload Identity Pool Provider Github Actions
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const pool = new gcp.iam.WorkloadIdentityPool("pool", {workloadIdentityPoolId: "example-pool"});
/// const example = new gcp.iam.WorkloadIdentityPoolProvider("example", {
/// workloadIdentityPoolId: pool.workloadIdentityPoolId,
/// workloadIdentityPoolProviderId: "example-prvdr",
/// displayName: "Name of provider",
/// description: "GitHub Actions identity pool provider for automated test",
/// disabled: true,
/// attributeCondition: `    assertion.repository_owner_id == \\"123456789\\" &&
/// attribute.repository == \\"gh-org/gh-repo\\" &&
/// assertion.ref == \\"refs/heads/main\\" &&
/// assertion.ref_type == \\"branch\\"
/// `,
/// attributeMapping: {
/// "google.subject": "assertion.sub",
/// "attribute.actor": "assertion.actor",
/// "attribute.aud": "assertion.aud",
/// "attribute.repository": "assertion.repository",
/// },
/// oidc: {
/// issuerUri: "https://token.actions.githubusercontent.com",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// pool = gcp.iam.WorkloadIdentityPool("pool", workload_identity_pool_id="example-pool")
/// example = gcp.iam.WorkloadIdentityPoolProvider("example",
/// workload_identity_pool_id=pool.workload_identity_pool_id,
/// workload_identity_pool_provider_id="example-prvdr",
/// display_name="Name of provider",
/// description="GitHub Actions identity pool provider for automated test",
/// disabled=True,
/// attribute_condition="""    assertion.repository_owner_id == \"123456789\" &&
/// attribute.repository == \"gh-org/gh-repo\" &&
/// assertion.ref == \"refs/heads/main\" &&
/// assertion.ref_type == \"branch\"
/// """,
/// attribute_mapping={
/// "google.subject": "assertion.sub",
/// "attribute.actor": "assertion.actor",
/// "attribute.aud": "assertion.aud",
/// "attribute.repository": "assertion.repository",
/// },
/// oidc={
/// "issuer_uri": "https://token.actions.githubusercontent.com",
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var pool = new Gcp.Iam.WorkloadIdentityPool("pool", new()
/// {
/// WorkloadIdentityPoolId = "example-pool",
/// });
///
/// var example = new Gcp.Iam.WorkloadIdentityPoolProvider("example", new()
/// {
/// WorkloadIdentityPoolId = pool.WorkloadIdentityPoolId,
/// WorkloadIdentityPoolProviderId = "example-prvdr",
/// DisplayName = "Name of provider",
/// Description = "GitHub Actions identity pool provider for automated test",
/// Disabled = true,
/// AttributeCondition = @"    assertion.repository_owner_id == \""123456789\"" &&
/// attribute.repository == \""gh-org/gh-repo\"" &&
/// assertion.ref == \""refs/heads/main\"" &&
/// assertion.ref_type == \""branch\""
/// ",
/// AttributeMapping =
/// {
/// { "google.subject", "assertion.sub" },
/// { "attribute.actor", "assertion.actor" },
/// { "attribute.aud", "assertion.aud" },
/// { "attribute.repository", "assertion.repository" },
/// },
/// Oidc = new Gcp.Iam.Inputs.WorkloadIdentityPoolProviderOidcArgs
/// {
/// IssuerUri = "https://token.actions.githubusercontent.com",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iam"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// pool, err := iam.NewWorkloadIdentityPool(ctx, "pool", &iam.WorkloadIdentityPoolArgs{
/// WorkloadIdentityPoolId: pulumi.String("example-pool"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = iam.NewWorkloadIdentityPoolProvider(ctx, "example", &iam.WorkloadIdentityPoolProviderArgs{
/// WorkloadIdentityPoolId:         pool.WorkloadIdentityPoolId,
/// WorkloadIdentityPoolProviderId: pulumi.String("example-prvdr"),
/// DisplayName:                    pulumi.String("Name of provider"),
/// Description:                    pulumi.String("GitHub Actions identity pool provider for automated test"),
/// Disabled:                       pulumi.Bool(true),
/// AttributeCondition:             pulumi.String("    assertion.repository_owner_id == \\\"123456789\\\" &&\n    attribute.repository == \\\"gh-org/gh-repo\\\" &&\n    assertion.ref == \\\"refs/heads/main\\\" &&\n    assertion.ref_type == \\\"branch\\\"\n"),
/// AttributeMapping: pulumi.StringMap{
/// "google.subject":       pulumi.String("assertion.sub"),
/// "attribute.actor":      pulumi.String("assertion.actor"),
/// "attribute.aud":        pulumi.String("assertion.aud"),
/// "attribute.repository": pulumi.String("assertion.repository"),
/// },
/// Oidc: &iam.WorkloadIdentityPoolProviderOidcArgs{
/// IssuerUri: pulumi.String("https://token.actions.githubusercontent.com"),
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
/// import com.pulumi.gcp.iam.WorkloadIdentityPool;
/// import com.pulumi.gcp.iam.WorkloadIdentityPoolArgs;
/// import com.pulumi.gcp.iam.WorkloadIdentityPoolProvider;
/// import com.pulumi.gcp.iam.WorkloadIdentityPoolProviderArgs;
/// import com.pulumi.gcp.iam.inputs.WorkloadIdentityPoolProviderOidcArgs;
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
/// var pool = new WorkloadIdentityPool("pool", WorkloadIdentityPoolArgs.builder()
/// .workloadIdentityPoolId("example-pool")
/// .build());
///
/// var example = new WorkloadIdentityPoolProvider("example", WorkloadIdentityPoolProviderArgs.builder()
/// .workloadIdentityPoolId(pool.workloadIdentityPoolId())
/// .workloadIdentityPoolProviderId("example-prvdr")
/// .displayName("Name of provider")
/// .description("GitHub Actions identity pool provider for automated test")
/// .disabled(true)
/// .attributeCondition("""
/// assertion.repository_owner_id == \"123456789\" &&
/// attribute.repository == \"gh-org/gh-repo\" &&
/// assertion.ref == \"refs/heads/main\" &&
/// assertion.ref_type == \"branch\"
/// """)
/// .attributeMapping(Map.ofEntries(
/// Map.entry("google.subject", "assertion.sub"),
/// Map.entry("attribute.actor", "assertion.actor"),
/// Map.entry("attribute.aud", "assertion.aud"),
/// Map.entry("attribute.repository", "assertion.repository")
/// ))
/// .oidc(WorkloadIdentityPoolProviderOidcArgs.builder()
/// .issuerUri("https://token.actions.githubusercontent.com")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// pool:
/// type: gcp:iam:WorkloadIdentityPool
/// properties:
/// workloadIdentityPoolId: example-pool
/// example:
/// type: gcp:iam:WorkloadIdentityPoolProvider
/// properties:
/// workloadIdentityPoolId: ${pool.workloadIdentityPoolId}
/// workloadIdentityPoolProviderId: example-prvdr
/// displayName: Name of provider
/// description: GitHub Actions identity pool provider for automated test
/// disabled: true
/// attributeCondition: |2
/// assertion.repository_owner_id == \"123456789\" &&
/// attribute.repository == \"gh-org/gh-repo\" &&
/// assertion.ref == \"refs/heads/main\" &&
/// assertion.ref_type == \"branch\"
/// attributeMapping:
/// google.subject: assertion.sub
/// attribute.actor: assertion.actor
/// attribute.aud: assertion.aud
/// attribute.repository: assertion.repository
/// oidc:
/// issuerUri: https://token.actions.githubusercontent.com
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Iam Workload Identity Pool Provider Oidc Basic
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const pool = new gcp.iam.WorkloadIdentityPool("pool", {workloadIdentityPoolId: "example-pool"});
/// const example = new gcp.iam.WorkloadIdentityPoolProvider("example", {
/// workloadIdentityPoolId: pool.workloadIdentityPoolId,
/// workloadIdentityPoolProviderId: "example-prvdr",
/// attributeMapping: {
/// "google.subject": "assertion.sub",
/// },
/// oidc: {
/// issuerUri: "https://sts.windows.net/azure-tenant-id",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// pool = gcp.iam.WorkloadIdentityPool("pool", workload_identity_pool_id="example-pool")
/// example = gcp.iam.WorkloadIdentityPoolProvider("example",
/// workload_identity_pool_id=pool.workload_identity_pool_id,
/// workload_identity_pool_provider_id="example-prvdr",
/// attribute_mapping={
/// "google.subject": "assertion.sub",
/// },
/// oidc={
/// "issuer_uri": "https://sts.windows.net/azure-tenant-id",
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var pool = new Gcp.Iam.WorkloadIdentityPool("pool", new()
/// {
/// WorkloadIdentityPoolId = "example-pool",
/// });
///
/// var example = new Gcp.Iam.WorkloadIdentityPoolProvider("example", new()
/// {
/// WorkloadIdentityPoolId = pool.WorkloadIdentityPoolId,
/// WorkloadIdentityPoolProviderId = "example-prvdr",
/// AttributeMapping =
/// {
/// { "google.subject", "assertion.sub" },
/// },
/// Oidc = new Gcp.Iam.Inputs.WorkloadIdentityPoolProviderOidcArgs
/// {
/// IssuerUri = "https://sts.windows.net/azure-tenant-id",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iam"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// pool, err := iam.NewWorkloadIdentityPool(ctx, "pool", &iam.WorkloadIdentityPoolArgs{
/// WorkloadIdentityPoolId: pulumi.String("example-pool"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = iam.NewWorkloadIdentityPoolProvider(ctx, "example", &iam.WorkloadIdentityPoolProviderArgs{
/// WorkloadIdentityPoolId:         pool.WorkloadIdentityPoolId,
/// WorkloadIdentityPoolProviderId: pulumi.String("example-prvdr"),
/// AttributeMapping: pulumi.StringMap{
/// "google.subject": pulumi.String("assertion.sub"),
/// },
/// Oidc: &iam.WorkloadIdentityPoolProviderOidcArgs{
/// IssuerUri: pulumi.String("https://sts.windows.net/azure-tenant-id"),
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
/// import com.pulumi.gcp.iam.WorkloadIdentityPool;
/// import com.pulumi.gcp.iam.WorkloadIdentityPoolArgs;
/// import com.pulumi.gcp.iam.WorkloadIdentityPoolProvider;
/// import com.pulumi.gcp.iam.WorkloadIdentityPoolProviderArgs;
/// import com.pulumi.gcp.iam.inputs.WorkloadIdentityPoolProviderOidcArgs;
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
/// var pool = new WorkloadIdentityPool("pool", WorkloadIdentityPoolArgs.builder()
/// .workloadIdentityPoolId("example-pool")
/// .build());
///
/// var example = new WorkloadIdentityPoolProvider("example", WorkloadIdentityPoolProviderArgs.builder()
/// .workloadIdentityPoolId(pool.workloadIdentityPoolId())
/// .workloadIdentityPoolProviderId("example-prvdr")
/// .attributeMapping(Map.of("google.subject", "assertion.sub"))
/// .oidc(WorkloadIdentityPoolProviderOidcArgs.builder()
/// .issuerUri("https://sts.windows.net/azure-tenant-id")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// pool:
/// type: gcp:iam:WorkloadIdentityPool
/// properties:
/// workloadIdentityPoolId: example-pool
/// example:
/// type: gcp:iam:WorkloadIdentityPoolProvider
/// properties:
/// workloadIdentityPoolId: ${pool.workloadIdentityPoolId}
/// workloadIdentityPoolProviderId: example-prvdr
/// attributeMapping:
/// google.subject: assertion.sub
/// oidc:
/// issuerUri: https://sts.windows.net/azure-tenant-id
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Iam Workload Identity Pool Provider Oidc Full
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const pool = new gcp.iam.WorkloadIdentityPool("pool", {workloadIdentityPoolId: "example-pool"});
/// const example = new gcp.iam.WorkloadIdentityPoolProvider("example", {
/// workloadIdentityPoolId: pool.workloadIdentityPoolId,
/// workloadIdentityPoolProviderId: "example-prvdr",
/// displayName: "Name of provider",
/// description: "OIDC identity pool provider for automated test",
/// disabled: true,
/// attributeCondition: "\"e968c2ef-047c-498d-8d79-16ca1b61e77e\" in assertion.groups",
/// attributeMapping: {
/// "google.subject": "\"azure::\" + assertion.tid + \"::\" + assertion.sub",
/// "attribute.tid": "assertion.tid",
/// "attribute.managed_identity_name": `      {
/// \\"8bb39bdb-1cc5-4447-b7db-a19e920eb111\\":\\"workload1\\",
/// \\"55d36609-9bcf-48e0-a366-a3cf19027d2a\\":\\"workload2\\"
/// }[assertion.oid]
/// `,
/// },
/// oidc: {
/// allowedAudiences: [
/// "https://example.com/gcp-oidc-federation",
/// "example.com/gcp-oidc-federation",
/// ],
/// issuerUri: "https://sts.windows.net/azure-tenant-id",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// pool = gcp.iam.WorkloadIdentityPool("pool", workload_identity_pool_id="example-pool")
/// example = gcp.iam.WorkloadIdentityPoolProvider("example",
/// workload_identity_pool_id=pool.workload_identity_pool_id,
/// workload_identity_pool_provider_id="example-prvdr",
/// display_name="Name of provider",
/// description="OIDC identity pool provider for automated test",
/// disabled=True,
/// attribute_condition="\"e968c2ef-047c-498d-8d79-16ca1b61e77e\" in assertion.groups",
/// attribute_mapping={
/// "google.subject": "\"azure::\" + assertion.tid + \"::\" + assertion.sub",
/// "attribute.tid": "assertion.tid",
/// "attribute.managed_identity_name": """      {
/// \"8bb39bdb-1cc5-4447-b7db-a19e920eb111\":\"workload1\",
/// \"55d36609-9bcf-48e0-a366-a3cf19027d2a\":\"workload2\"
/// }[assertion.oid]
/// """,
/// },
/// oidc={
/// "allowed_audiences": [
/// "https://example.com/gcp-oidc-federation",
/// "example.com/gcp-oidc-federation",
/// ],
/// "issuer_uri": "https://sts.windows.net/azure-tenant-id",
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var pool = new Gcp.Iam.WorkloadIdentityPool("pool", new()
/// {
/// WorkloadIdentityPoolId = "example-pool",
/// });
///
/// var example = new Gcp.Iam.WorkloadIdentityPoolProvider("example", new()
/// {
/// WorkloadIdentityPoolId = pool.WorkloadIdentityPoolId,
/// WorkloadIdentityPoolProviderId = "example-prvdr",
/// DisplayName = "Name of provider",
/// Description = "OIDC identity pool provider for automated test",
/// Disabled = true,
/// AttributeCondition = "\"e968c2ef-047c-498d-8d79-16ca1b61e77e\" in assertion.groups",
/// AttributeMapping =
/// {
/// { "google.subject", "\"azure::\" + assertion.tid + \"::\" + assertion.sub" },
/// { "attribute.tid", "assertion.tid" },
/// { "attribute.managed_identity_name", @"      {
/// \""8bb39bdb-1cc5-4447-b7db-a19e920eb111\"":\""workload1\"",
/// \""55d36609-9bcf-48e0-a366-a3cf19027d2a\"":\""workload2\""
/// }[assertion.oid]
/// " },
/// },
/// Oidc = new Gcp.Iam.Inputs.WorkloadIdentityPoolProviderOidcArgs
/// {
/// AllowedAudiences = new[]
/// {
/// "https://example.com/gcp-oidc-federation",
/// "example.com/gcp-oidc-federation",
/// },
/// IssuerUri = "https://sts.windows.net/azure-tenant-id",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iam"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// pool, err := iam.NewWorkloadIdentityPool(ctx, "pool", &iam.WorkloadIdentityPoolArgs{
/// WorkloadIdentityPoolId: pulumi.String("example-pool"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = iam.NewWorkloadIdentityPoolProvider(ctx, "example", &iam.WorkloadIdentityPoolProviderArgs{
/// WorkloadIdentityPoolId:         pool.WorkloadIdentityPoolId,
/// WorkloadIdentityPoolProviderId: pulumi.String("example-prvdr"),
/// DisplayName:                    pulumi.String("Name of provider"),
/// Description:                    pulumi.String("OIDC identity pool provider for automated test"),
/// Disabled:                       pulumi.Bool(true),
/// AttributeCondition:             pulumi.String("\"e968c2ef-047c-498d-8d79-16ca1b61e77e\" in assertion.groups"),
/// AttributeMapping: pulumi.StringMap{
/// "google.subject":                  pulumi.String("\"azure::\" + assertion.tid + \"::\" + assertion.sub"),
/// "attribute.tid":                   pulumi.String("assertion.tid"),
/// "attribute.managed_identity_name": pulumi.String("      {\n        \\\"8bb39bdb-1cc5-4447-b7db-a19e920eb111\\\":\\\"workload1\\\",\n        \\\"55d36609-9bcf-48e0-a366-a3cf19027d2a\\\":\\\"workload2\\\"\n      }[assertion.oid]\n"),
/// },
/// Oidc: &iam.WorkloadIdentityPoolProviderOidcArgs{
/// AllowedAudiences: pulumi.StringArray{
/// pulumi.String("https://example.com/gcp-oidc-federation"),
/// pulumi.String("example.com/gcp-oidc-federation"),
/// },
/// IssuerUri: pulumi.String("https://sts.windows.net/azure-tenant-id"),
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
/// import com.pulumi.gcp.iam.WorkloadIdentityPool;
/// import com.pulumi.gcp.iam.WorkloadIdentityPoolArgs;
/// import com.pulumi.gcp.iam.WorkloadIdentityPoolProvider;
/// import com.pulumi.gcp.iam.WorkloadIdentityPoolProviderArgs;
/// import com.pulumi.gcp.iam.inputs.WorkloadIdentityPoolProviderOidcArgs;
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
/// var pool = new WorkloadIdentityPool("pool", WorkloadIdentityPoolArgs.builder()
/// .workloadIdentityPoolId("example-pool")
/// .build());
///
/// var example = new WorkloadIdentityPoolProvider("example", WorkloadIdentityPoolProviderArgs.builder()
/// .workloadIdentityPoolId(pool.workloadIdentityPoolId())
/// .workloadIdentityPoolProviderId("example-prvdr")
/// .displayName("Name of provider")
/// .description("OIDC identity pool provider for automated test")
/// .disabled(true)
/// .attributeCondition("\"e968c2ef-047c-498d-8d79-16ca1b61e77e\" in assertion.groups")
/// .attributeMapping(Map.ofEntries(
/// Map.entry("google.subject", "\"azure::\" + assertion.tid + \"::\" + assertion.sub"),
/// Map.entry("attribute.tid", "assertion.tid"),
/// Map.entry("attribute.managed_identity_name", """
/// {
/// \"8bb39bdb-1cc5-4447-b7db-a19e920eb111\":\"workload1\",
/// \"55d36609-9bcf-48e0-a366-a3cf19027d2a\":\"workload2\"
/// }[assertion.oid]
/// """)
/// ))
/// .oidc(WorkloadIdentityPoolProviderOidcArgs.builder()
/// .allowedAudiences(
/// "https://example.com/gcp-oidc-federation",
/// "example.com/gcp-oidc-federation")
/// .issuerUri("https://sts.windows.net/azure-tenant-id")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// pool:
/// type: gcp:iam:WorkloadIdentityPool
/// properties:
/// workloadIdentityPoolId: example-pool
/// example:
/// type: gcp:iam:WorkloadIdentityPoolProvider
/// properties:
/// workloadIdentityPoolId: ${pool.workloadIdentityPoolId}
/// workloadIdentityPoolProviderId: example-prvdr
/// displayName: Name of provider
/// description: OIDC identity pool provider for automated test
/// disabled: true
/// attributeCondition: '"e968c2ef-047c-498d-8d79-16ca1b61e77e" in assertion.groups'
/// attributeMapping:
/// google.subject: '"azure::" + assertion.tid + "::" + assertion.sub'
/// attribute.tid: assertion.tid
/// attribute.managed_identity_name: |2
/// {
/// \"8bb39bdb-1cc5-4447-b7db-a19e920eb111\":\"workload1\",
/// \"55d36609-9bcf-48e0-a366-a3cf19027d2a\":\"workload2\"
/// }[assertion.oid]
/// oidc:
/// allowedAudiences:
/// - https://example.com/gcp-oidc-federation
/// - example.com/gcp-oidc-federation
/// issuerUri: https://sts.windows.net/azure-tenant-id
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Iam Workload Identity Pool Provider Saml Basic
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as std from "@pulumi/std";
///
/// const pool = new gcp.iam.WorkloadIdentityPool("pool", {workloadIdentityPoolId: "example-pool"});
/// const example = new gcp.iam.WorkloadIdentityPoolProvider("example", {
/// workloadIdentityPoolId: pool.workloadIdentityPoolId,
/// workloadIdentityPoolProviderId: "example-prvdr",
/// attributeMapping: {
/// "google.subject": "assertion.arn",
/// "attribute.aws_account": "assertion.account",
/// "attribute.environment": "assertion.arn.contains(\":instance-profile/Production\") ? \"prod\" : \"test\"",
/// },
/// saml: {
/// idpMetadataXml: std.file({
/// input: "test-fixtures/metadata.xml",
/// }).then(invoke => invoke.result),
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumi_std as std
///
/// pool = gcp.iam.WorkloadIdentityPool("pool", workload_identity_pool_id="example-pool")
/// example = gcp.iam.WorkloadIdentityPoolProvider("example",
/// workload_identity_pool_id=pool.workload_identity_pool_id,
/// workload_identity_pool_provider_id="example-prvdr",
/// attribute_mapping={
/// "google.subject": "assertion.arn",
/// "attribute.aws_account": "assertion.account",
/// "attribute.environment": "assertion.arn.contains(\":instance-profile/Production\") ? \"prod\" : \"test\"",
/// },
/// saml={
/// "idp_metadata_xml": std.file(input="test-fixtures/metadata.xml").result,
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var pool = new Gcp.Iam.WorkloadIdentityPool("pool", new()
/// {
/// WorkloadIdentityPoolId = "example-pool",
/// });
///
/// var example = new Gcp.Iam.WorkloadIdentityPoolProvider("example", new()
/// {
/// WorkloadIdentityPoolId = pool.WorkloadIdentityPoolId,
/// WorkloadIdentityPoolProviderId = "example-prvdr",
/// AttributeMapping =
/// {
/// { "google.subject", "assertion.arn" },
/// { "attribute.aws_account", "assertion.account" },
/// { "attribute.environment", "assertion.arn.contains(\":instance-profile/Production\") ? \"prod\" : \"test\"" },
/// },
/// Saml = new Gcp.Iam.Inputs.WorkloadIdentityPoolProviderSamlArgs
/// {
/// IdpMetadataXml = Std.File.Invoke(new()
/// {
/// Input = "test-fixtures/metadata.xml",
/// }).Apply(invoke => invoke.Result),
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iam"
/// "github.com/pulumi/pulumi-std/sdk/go/std"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// pool, err := iam.NewWorkloadIdentityPool(ctx, "pool", &iam.WorkloadIdentityPoolArgs{
/// WorkloadIdentityPoolId: pulumi.String("example-pool"),
/// })
/// if err != nil {
/// return err
/// }
/// invokeFile, err := std.File(ctx, &std.FileArgs{
/// Input: "test-fixtures/metadata.xml",
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = iam.NewWorkloadIdentityPoolProvider(ctx, "example", &iam.WorkloadIdentityPoolProviderArgs{
/// WorkloadIdentityPoolId:         pool.WorkloadIdentityPoolId,
/// WorkloadIdentityPoolProviderId: pulumi.String("example-prvdr"),
/// AttributeMapping: pulumi.StringMap{
/// "google.subject":        pulumi.String("assertion.arn"),
/// "attribute.aws_account": pulumi.String("assertion.account"),
/// "attribute.environment": pulumi.String("assertion.arn.contains(\":instance-profile/Production\") ? \"prod\" : \"test\""),
/// },
/// Saml: &iam.WorkloadIdentityPoolProviderSamlArgs{
/// IdpMetadataXml: pulumi.String(invokeFile.Result),
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
/// import com.pulumi.gcp.iam.WorkloadIdentityPool;
/// import com.pulumi.gcp.iam.WorkloadIdentityPoolArgs;
/// import com.pulumi.gcp.iam.WorkloadIdentityPoolProvider;
/// import com.pulumi.gcp.iam.WorkloadIdentityPoolProviderArgs;
/// import com.pulumi.gcp.iam.inputs.WorkloadIdentityPoolProviderSamlArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FileArgs;
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
/// var pool = new WorkloadIdentityPool("pool", WorkloadIdentityPoolArgs.builder()
/// .workloadIdentityPoolId("example-pool")
/// .build());
///
/// var example = new WorkloadIdentityPoolProvider("example", WorkloadIdentityPoolProviderArgs.builder()
/// .workloadIdentityPoolId(pool.workloadIdentityPoolId())
/// .workloadIdentityPoolProviderId("example-prvdr")
/// .attributeMapping(Map.ofEntries(
/// Map.entry("google.subject", "assertion.arn"),
/// Map.entry("attribute.aws_account", "assertion.account"),
/// Map.entry("attribute.environment", "assertion.arn.contains(\":instance-profile/Production\") ? \"prod\" : \"test\"")
/// ))
/// .saml(WorkloadIdentityPoolProviderSamlArgs.builder()
/// .idpMetadataXml(StdFunctions.file(FileArgs.builder()
/// .input("test-fixtures/metadata.xml")
/// .build()).result())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// pool:
/// type: gcp:iam:WorkloadIdentityPool
/// properties:
/// workloadIdentityPoolId: example-pool
/// example:
/// type: gcp:iam:WorkloadIdentityPoolProvider
/// properties:
/// workloadIdentityPoolId: ${pool.workloadIdentityPoolId}
/// workloadIdentityPoolProviderId: example-prvdr
/// attributeMapping:
/// google.subject: assertion.arn
/// attribute.aws_account: assertion.account
/// attribute.environment: 'assertion.arn.contains(":instance-profile/Production") ? "prod" : "test"'
/// saml:
/// idpMetadataXml:
/// fn::invoke:
/// function: std:file
/// arguments:
/// input: test-fixtures/metadata.xml
/// return: result
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Iam Workload Identity Pool Provider Saml Full
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as std from "@pulumi/std";
///
/// const pool = new gcp.iam.WorkloadIdentityPool("pool", {workloadIdentityPoolId: "example-pool"});
/// const example = new gcp.iam.WorkloadIdentityPoolProvider("example", {
/// workloadIdentityPoolId: pool.workloadIdentityPoolId,
/// workloadIdentityPoolProviderId: "example-prvdr",
/// displayName: "Name of provider",
/// description: "SAML 2.0 identity pool provider for automated test",
/// disabled: true,
/// attributeMapping: {
/// "google.subject": "assertion.arn",
/// "attribute.aws_account": "assertion.account",
/// "attribute.environment": "assertion.arn.contains(\":instance-profile/Production\") ? \"prod\" : \"test\"",
/// },
/// saml: {
/// idpMetadataXml: std.file({
/// input: "test-fixtures/metadata.xml",
/// }).then(invoke => invoke.result),
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumi_std as std
///
/// pool = gcp.iam.WorkloadIdentityPool("pool", workload_identity_pool_id="example-pool")
/// example = gcp.iam.WorkloadIdentityPoolProvider("example",
/// workload_identity_pool_id=pool.workload_identity_pool_id,
/// workload_identity_pool_provider_id="example-prvdr",
/// display_name="Name of provider",
/// description="SAML 2.0 identity pool provider for automated test",
/// disabled=True,
/// attribute_mapping={
/// "google.subject": "assertion.arn",
/// "attribute.aws_account": "assertion.account",
/// "attribute.environment": "assertion.arn.contains(\":instance-profile/Production\") ? \"prod\" : \"test\"",
/// },
/// saml={
/// "idp_metadata_xml": std.file(input="test-fixtures/metadata.xml").result,
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var pool = new Gcp.Iam.WorkloadIdentityPool("pool", new()
/// {
/// WorkloadIdentityPoolId = "example-pool",
/// });
///
/// var example = new Gcp.Iam.WorkloadIdentityPoolProvider("example", new()
/// {
/// WorkloadIdentityPoolId = pool.WorkloadIdentityPoolId,
/// WorkloadIdentityPoolProviderId = "example-prvdr",
/// DisplayName = "Name of provider",
/// Description = "SAML 2.0 identity pool provider for automated test",
/// Disabled = true,
/// AttributeMapping =
/// {
/// { "google.subject", "assertion.arn" },
/// { "attribute.aws_account", "assertion.account" },
/// { "attribute.environment", "assertion.arn.contains(\":instance-profile/Production\") ? \"prod\" : \"test\"" },
/// },
/// Saml = new Gcp.Iam.Inputs.WorkloadIdentityPoolProviderSamlArgs
/// {
/// IdpMetadataXml = Std.File.Invoke(new()
/// {
/// Input = "test-fixtures/metadata.xml",
/// }).Apply(invoke => invoke.Result),
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iam"
/// "github.com/pulumi/pulumi-std/sdk/go/std"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// pool, err := iam.NewWorkloadIdentityPool(ctx, "pool", &iam.WorkloadIdentityPoolArgs{
/// WorkloadIdentityPoolId: pulumi.String("example-pool"),
/// })
/// if err != nil {
/// return err
/// }
/// invokeFile, err := std.File(ctx, &std.FileArgs{
/// Input: "test-fixtures/metadata.xml",
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = iam.NewWorkloadIdentityPoolProvider(ctx, "example", &iam.WorkloadIdentityPoolProviderArgs{
/// WorkloadIdentityPoolId:         pool.WorkloadIdentityPoolId,
/// WorkloadIdentityPoolProviderId: pulumi.String("example-prvdr"),
/// DisplayName:                    pulumi.String("Name of provider"),
/// Description:                    pulumi.String("SAML 2.0 identity pool provider for automated test"),
/// Disabled:                       pulumi.Bool(true),
/// AttributeMapping: pulumi.StringMap{
/// "google.subject":        pulumi.String("assertion.arn"),
/// "attribute.aws_account": pulumi.String("assertion.account"),
/// "attribute.environment": pulumi.String("assertion.arn.contains(\":instance-profile/Production\") ? \"prod\" : \"test\""),
/// },
/// Saml: &iam.WorkloadIdentityPoolProviderSamlArgs{
/// IdpMetadataXml: pulumi.String(invokeFile.Result),
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
/// import com.pulumi.gcp.iam.WorkloadIdentityPool;
/// import com.pulumi.gcp.iam.WorkloadIdentityPoolArgs;
/// import com.pulumi.gcp.iam.WorkloadIdentityPoolProvider;
/// import com.pulumi.gcp.iam.WorkloadIdentityPoolProviderArgs;
/// import com.pulumi.gcp.iam.inputs.WorkloadIdentityPoolProviderSamlArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FileArgs;
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
/// var pool = new WorkloadIdentityPool("pool", WorkloadIdentityPoolArgs.builder()
/// .workloadIdentityPoolId("example-pool")
/// .build());
///
/// var example = new WorkloadIdentityPoolProvider("example", WorkloadIdentityPoolProviderArgs.builder()
/// .workloadIdentityPoolId(pool.workloadIdentityPoolId())
/// .workloadIdentityPoolProviderId("example-prvdr")
/// .displayName("Name of provider")
/// .description("SAML 2.0 identity pool provider for automated test")
/// .disabled(true)
/// .attributeMapping(Map.ofEntries(
/// Map.entry("google.subject", "assertion.arn"),
/// Map.entry("attribute.aws_account", "assertion.account"),
/// Map.entry("attribute.environment", "assertion.arn.contains(\":instance-profile/Production\") ? \"prod\" : \"test\"")
/// ))
/// .saml(WorkloadIdentityPoolProviderSamlArgs.builder()
/// .idpMetadataXml(StdFunctions.file(FileArgs.builder()
/// .input("test-fixtures/metadata.xml")
/// .build()).result())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// pool:
/// type: gcp:iam:WorkloadIdentityPool
/// properties:
/// workloadIdentityPoolId: example-pool
/// example:
/// type: gcp:iam:WorkloadIdentityPoolProvider
/// properties:
/// workloadIdentityPoolId: ${pool.workloadIdentityPoolId}
/// workloadIdentityPoolProviderId: example-prvdr
/// displayName: Name of provider
/// description: SAML 2.0 identity pool provider for automated test
/// disabled: true
/// attributeMapping:
/// google.subject: assertion.arn
/// attribute.aws_account: assertion.account
/// attribute.environment: 'assertion.arn.contains(":instance-profile/Production") ? "prod" : "test"'
/// saml:
/// idpMetadataXml:
/// fn::invoke:
/// function: std:file
/// arguments:
/// input: test-fixtures/metadata.xml
/// return: result
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Iam Workload Identity Pool Provider Oidc Upload Key
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const pool = new gcp.iam.WorkloadIdentityPool("pool", {workloadIdentityPoolId: "example-pool"});
/// const example = new gcp.iam.WorkloadIdentityPoolProvider("example", {
/// workloadIdentityPoolId: pool.workloadIdentityPoolId,
/// workloadIdentityPoolProviderId: "example-prvdr",
/// displayName: "Name of provider",
/// description: "OIDC identity pool provider for automated test",
/// disabled: true,
/// attributeCondition: "\"e968c2ef-047c-498d-8d79-16ca1b61e77e\" in assertion.groups",
/// attributeMapping: {
/// "google.subject": "\"azure::\" + assertion.tid + \"::\" + assertion.sub",
/// "attribute.tid": "assertion.tid",
/// "attribute.managed_identity_name": `      {
/// \\"8bb39bdb-1cc5-4447-b7db-a19e920eb111\\":\\"workload1\\",
/// \\"55d36609-9bcf-48e0-a366-a3cf19027d2a\\":\\"workload2\\"
/// }[assertion.oid]
/// `,
/// },
/// oidc: {
/// allowedAudiences: [
/// "https://example.com/gcp-oidc-federation",
/// "example.com/gcp-oidc-federation",
/// ],
/// issuerUri: "https://sts.windows.net/azure-tenant-id",
/// jwksJson: "{\"keys\":[{\"kty\":\"RSA\",\"alg\":\"RS256\",\"kid\":\"sif0AR-F6MuvksAyAOv-Pds08Bcf2eUMlxE30NofddA\",\"use\":\"sig\",\"e\":\"AQAB\",\"n\":\"ylH1Chl1tpfti3lh51E1g5dPogzXDaQseqjsefGLknaNl5W6Wd4frBhHyE2t41Q5zgz_Ll0-NvWm0FlaG6brhrN9QZu6sJP1bM8WPfJVPgXOanxi7d7TXCkeNubGeiLTf5R3UXtS9Lm_guemU7MxDjDTelxnlgGCihOVTcL526suNJUdfXtpwUsvdU6_ZnAp9IpsuYjCtwPm9hPumlcZGMbxstdh07O4y4O90cVQClJOKSGQjAUCKJWXIQ0cqffGS_HuS_725CPzQ85SzYZzaNpgfhAER7kx_9P16ARM3BJz0PI5fe2hECE61J4GYU_BY43sxDfs7HyJpEXKLU9eWw\"}]}",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// pool = gcp.iam.WorkloadIdentityPool("pool", workload_identity_pool_id="example-pool")
/// example = gcp.iam.WorkloadIdentityPoolProvider("example",
/// workload_identity_pool_id=pool.workload_identity_pool_id,
/// workload_identity_pool_provider_id="example-prvdr",
/// display_name="Name of provider",
/// description="OIDC identity pool provider for automated test",
/// disabled=True,
/// attribute_condition="\"e968c2ef-047c-498d-8d79-16ca1b61e77e\" in assertion.groups",
/// attribute_mapping={
/// "google.subject": "\"azure::\" + assertion.tid + \"::\" + assertion.sub",
/// "attribute.tid": "assertion.tid",
/// "attribute.managed_identity_name": """      {
/// \"8bb39bdb-1cc5-4447-b7db-a19e920eb111\":\"workload1\",
/// \"55d36609-9bcf-48e0-a366-a3cf19027d2a\":\"workload2\"
/// }[assertion.oid]
/// """,
/// },
/// oidc={
/// "allowed_audiences": [
/// "https://example.com/gcp-oidc-federation",
/// "example.com/gcp-oidc-federation",
/// ],
/// "issuer_uri": "https://sts.windows.net/azure-tenant-id",
/// "jwks_json": "{\"keys\":[{\"kty\":\"RSA\",\"alg\":\"RS256\",\"kid\":\"sif0AR-F6MuvksAyAOv-Pds08Bcf2eUMlxE30NofddA\",\"use\":\"sig\",\"e\":\"AQAB\",\"n\":\"ylH1Chl1tpfti3lh51E1g5dPogzXDaQseqjsefGLknaNl5W6Wd4frBhHyE2t41Q5zgz_Ll0-NvWm0FlaG6brhrN9QZu6sJP1bM8WPfJVPgXOanxi7d7TXCkeNubGeiLTf5R3UXtS9Lm_guemU7MxDjDTelxnlgGCihOVTcL526suNJUdfXtpwUsvdU6_ZnAp9IpsuYjCtwPm9hPumlcZGMbxstdh07O4y4O90cVQClJOKSGQjAUCKJWXIQ0cqffGS_HuS_725CPzQ85SzYZzaNpgfhAER7kx_9P16ARM3BJz0PI5fe2hECE61J4GYU_BY43sxDfs7HyJpEXKLU9eWw\"}]}",
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var pool = new Gcp.Iam.WorkloadIdentityPool("pool", new()
/// {
/// WorkloadIdentityPoolId = "example-pool",
/// });
///
/// var example = new Gcp.Iam.WorkloadIdentityPoolProvider("example", new()
/// {
/// WorkloadIdentityPoolId = pool.WorkloadIdentityPoolId,
/// WorkloadIdentityPoolProviderId = "example-prvdr",
/// DisplayName = "Name of provider",
/// Description = "OIDC identity pool provider for automated test",
/// Disabled = true,
/// AttributeCondition = "\"e968c2ef-047c-498d-8d79-16ca1b61e77e\" in assertion.groups",
/// AttributeMapping =
/// {
/// { "google.subject", "\"azure::\" + assertion.tid + \"::\" + assertion.sub" },
/// { "attribute.tid", "assertion.tid" },
/// { "attribute.managed_identity_name", @"      {
/// \""8bb39bdb-1cc5-4447-b7db-a19e920eb111\"":\""workload1\"",
/// \""55d36609-9bcf-48e0-a366-a3cf19027d2a\"":\""workload2\""
/// }[assertion.oid]
/// " },
/// },
/// Oidc = new Gcp.Iam.Inputs.WorkloadIdentityPoolProviderOidcArgs
/// {
/// AllowedAudiences = new[]
/// {
/// "https://example.com/gcp-oidc-federation",
/// "example.com/gcp-oidc-federation",
/// },
/// IssuerUri = "https://sts.windows.net/azure-tenant-id",
/// JwksJson = "{\"keys\":[{\"kty\":\"RSA\",\"alg\":\"RS256\",\"kid\":\"sif0AR-F6MuvksAyAOv-Pds08Bcf2eUMlxE30NofddA\",\"use\":\"sig\",\"e\":\"AQAB\",\"n\":\"ylH1Chl1tpfti3lh51E1g5dPogzXDaQseqjsefGLknaNl5W6Wd4frBhHyE2t41Q5zgz_Ll0-NvWm0FlaG6brhrN9QZu6sJP1bM8WPfJVPgXOanxi7d7TXCkeNubGeiLTf5R3UXtS9Lm_guemU7MxDjDTelxnlgGCihOVTcL526suNJUdfXtpwUsvdU6_ZnAp9IpsuYjCtwPm9hPumlcZGMbxstdh07O4y4O90cVQClJOKSGQjAUCKJWXIQ0cqffGS_HuS_725CPzQ85SzYZzaNpgfhAER7kx_9P16ARM3BJz0PI5fe2hECE61J4GYU_BY43sxDfs7HyJpEXKLU9eWw\"}]}",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iam"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// pool, err := iam.NewWorkloadIdentityPool(ctx, "pool", &iam.WorkloadIdentityPoolArgs{
/// WorkloadIdentityPoolId: pulumi.String("example-pool"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = iam.NewWorkloadIdentityPoolProvider(ctx, "example", &iam.WorkloadIdentityPoolProviderArgs{
/// WorkloadIdentityPoolId:         pool.WorkloadIdentityPoolId,
/// WorkloadIdentityPoolProviderId: pulumi.String("example-prvdr"),
/// DisplayName:                    pulumi.String("Name of provider"),
/// Description:                    pulumi.String("OIDC identity pool provider for automated test"),
/// Disabled:                       pulumi.Bool(true),
/// AttributeCondition:             pulumi.String("\"e968c2ef-047c-498d-8d79-16ca1b61e77e\" in assertion.groups"),
/// AttributeMapping: pulumi.StringMap{
/// "google.subject":                  pulumi.String("\"azure::\" + assertion.tid + \"::\" + assertion.sub"),
/// "attribute.tid":                   pulumi.String("assertion.tid"),
/// "attribute.managed_identity_name": pulumi.String("      {\n        \\\"8bb39bdb-1cc5-4447-b7db-a19e920eb111\\\":\\\"workload1\\\",\n        \\\"55d36609-9bcf-48e0-a366-a3cf19027d2a\\\":\\\"workload2\\\"\n      }[assertion.oid]\n"),
/// },
/// Oidc: &iam.WorkloadIdentityPoolProviderOidcArgs{
/// AllowedAudiences: pulumi.StringArray{
/// pulumi.String("https://example.com/gcp-oidc-federation"),
/// pulumi.String("example.com/gcp-oidc-federation"),
/// },
/// IssuerUri: pulumi.String("https://sts.windows.net/azure-tenant-id"),
/// JwksJson:  pulumi.String("{\"keys\":[{\"kty\":\"RSA\",\"alg\":\"RS256\",\"kid\":\"sif0AR-F6MuvksAyAOv-Pds08Bcf2eUMlxE30NofddA\",\"use\":\"sig\",\"e\":\"AQAB\",\"n\":\"ylH1Chl1tpfti3lh51E1g5dPogzXDaQseqjsefGLknaNl5W6Wd4frBhHyE2t41Q5zgz_Ll0-NvWm0FlaG6brhrN9QZu6sJP1bM8WPfJVPgXOanxi7d7TXCkeNubGeiLTf5R3UXtS9Lm_guemU7MxDjDTelxnlgGCihOVTcL526suNJUdfXtpwUsvdU6_ZnAp9IpsuYjCtwPm9hPumlcZGMbxstdh07O4y4O90cVQClJOKSGQjAUCKJWXIQ0cqffGS_HuS_725CPzQ85SzYZzaNpgfhAER7kx_9P16ARM3BJz0PI5fe2hECE61J4GYU_BY43sxDfs7HyJpEXKLU9eWw\"}]}"),
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
/// import com.pulumi.gcp.iam.WorkloadIdentityPool;
/// import com.pulumi.gcp.iam.WorkloadIdentityPoolArgs;
/// import com.pulumi.gcp.iam.WorkloadIdentityPoolProvider;
/// import com.pulumi.gcp.iam.WorkloadIdentityPoolProviderArgs;
/// import com.pulumi.gcp.iam.inputs.WorkloadIdentityPoolProviderOidcArgs;
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
/// var pool = new WorkloadIdentityPool("pool", WorkloadIdentityPoolArgs.builder()
/// .workloadIdentityPoolId("example-pool")
/// .build());
///
/// var example = new WorkloadIdentityPoolProvider("example", WorkloadIdentityPoolProviderArgs.builder()
/// .workloadIdentityPoolId(pool.workloadIdentityPoolId())
/// .workloadIdentityPoolProviderId("example-prvdr")
/// .displayName("Name of provider")
/// .description("OIDC identity pool provider for automated test")
/// .disabled(true)
/// .attributeCondition("\"e968c2ef-047c-498d-8d79-16ca1b61e77e\" in assertion.groups")
/// .attributeMapping(Map.ofEntries(
/// Map.entry("google.subject", "\"azure::\" + assertion.tid + \"::\" + assertion.sub"),
/// Map.entry("attribute.tid", "assertion.tid"),
/// Map.entry("attribute.managed_identity_name", """
/// {
/// \"8bb39bdb-1cc5-4447-b7db-a19e920eb111\":\"workload1\",
/// \"55d36609-9bcf-48e0-a366-a3cf19027d2a\":\"workload2\"
/// }[assertion.oid]
/// """)
/// ))
/// .oidc(WorkloadIdentityPoolProviderOidcArgs.builder()
/// .allowedAudiences(
/// "https://example.com/gcp-oidc-federation",
/// "example.com/gcp-oidc-federation")
/// .issuerUri("https://sts.windows.net/azure-tenant-id")
/// .jwksJson("{\"keys\":[{\"kty\":\"RSA\",\"alg\":\"RS256\",\"kid\":\"sif0AR-F6MuvksAyAOv-Pds08Bcf2eUMlxE30NofddA\",\"use\":\"sig\",\"e\":\"AQAB\",\"n\":\"ylH1Chl1tpfti3lh51E1g5dPogzXDaQseqjsefGLknaNl5W6Wd4frBhHyE2t41Q5zgz_Ll0-NvWm0FlaG6brhrN9QZu6sJP1bM8WPfJVPgXOanxi7d7TXCkeNubGeiLTf5R3UXtS9Lm_guemU7MxDjDTelxnlgGCihOVTcL526suNJUdfXtpwUsvdU6_ZnAp9IpsuYjCtwPm9hPumlcZGMbxstdh07O4y4O90cVQClJOKSGQjAUCKJWXIQ0cqffGS_HuS_725CPzQ85SzYZzaNpgfhAER7kx_9P16ARM3BJz0PI5fe2hECE61J4GYU_BY43sxDfs7HyJpEXKLU9eWw\"}]}")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// pool:
/// type: gcp:iam:WorkloadIdentityPool
/// properties:
/// workloadIdentityPoolId: example-pool
/// example:
/// type: gcp:iam:WorkloadIdentityPoolProvider
/// properties:
/// workloadIdentityPoolId: ${pool.workloadIdentityPoolId}
/// workloadIdentityPoolProviderId: example-prvdr
/// displayName: Name of provider
/// description: OIDC identity pool provider for automated test
/// disabled: true
/// attributeCondition: '"e968c2ef-047c-498d-8d79-16ca1b61e77e" in assertion.groups'
/// attributeMapping:
/// google.subject: '"azure::" + assertion.tid + "::" + assertion.sub'
/// attribute.tid: assertion.tid
/// attribute.managed_identity_name: |2
/// {
/// \"8bb39bdb-1cc5-4447-b7db-a19e920eb111\":\"workload1\",
/// \"55d36609-9bcf-48e0-a366-a3cf19027d2a\":\"workload2\"
/// }[assertion.oid]
/// oidc:
/// allowedAudiences:
/// - https://example.com/gcp-oidc-federation
/// - example.com/gcp-oidc-federation
/// issuerUri: https://sts.windows.net/azure-tenant-id
/// jwksJson: '{"keys":[{"kty":"RSA","alg":"RS256","kid":"sif0AR-F6MuvksAyAOv-Pds08Bcf2eUMlxE30NofddA","use":"sig","e":"AQAB","n":"ylH1Chl1tpfti3lh51E1g5dPogzXDaQseqjsefGLknaNl5W6Wd4frBhHyE2t41Q5zgz_Ll0-NvWm0FlaG6brhrN9QZu6sJP1bM8WPfJVPgXOanxi7d7TXCkeNubGeiLTf5R3UXtS9Lm_guemU7MxDjDTelxnlgGCihOVTcL526suNJUdfXtpwUsvdU6_ZnAp9IpsuYjCtwPm9hPumlcZGMbxstdh07O4y4O90cVQClJOKSGQjAUCKJWXIQ0cqffGS_HuS_725CPzQ85SzYZzaNpgfhAER7kx_9P16ARM3BJz0PI5fe2hECE61J4GYU_BY43sxDfs7HyJpEXKLU9eWw"}]}'
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Iam Workload Identity Pool Provider X509 Basic
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as std from "@pulumi/std";
///
/// const pool = new gcp.iam.WorkloadIdentityPool("pool", {workloadIdentityPoolId: "example-pool"});
/// const example = new gcp.iam.WorkloadIdentityPoolProvider("example", {
/// workloadIdentityPoolId: pool.workloadIdentityPoolId,
/// workloadIdentityPoolProviderId: "example-prvdr",
/// attributeMapping: {
/// "google.subject": "assertion.subject.dn.cn",
/// },
/// x509: {
/// trustStore: {
/// trustAnchors: [{
/// pemCertificate: std.file({
/// input: "test-fixtures/trust_anchor.pem",
/// }).then(invoke => invoke.result),
/// }],
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumi_std as std
///
/// pool = gcp.iam.WorkloadIdentityPool("pool", workload_identity_pool_id="example-pool")
/// example = gcp.iam.WorkloadIdentityPoolProvider("example",
/// workload_identity_pool_id=pool.workload_identity_pool_id,
/// workload_identity_pool_provider_id="example-prvdr",
/// attribute_mapping={
/// "google.subject": "assertion.subject.dn.cn",
/// },
/// x509={
/// "trust_store": {
/// "trust_anchors": [{
/// "pem_certificate": std.file(input="test-fixtures/trust_anchor.pem").result,
/// }],
/// },
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var pool = new Gcp.Iam.WorkloadIdentityPool("pool", new()
/// {
/// WorkloadIdentityPoolId = "example-pool",
/// });
///
/// var example = new Gcp.Iam.WorkloadIdentityPoolProvider("example", new()
/// {
/// WorkloadIdentityPoolId = pool.WorkloadIdentityPoolId,
/// WorkloadIdentityPoolProviderId = "example-prvdr",
/// AttributeMapping =
/// {
/// { "google.subject", "assertion.subject.dn.cn" },
/// },
/// X509 = new Gcp.Iam.Inputs.WorkloadIdentityPoolProviderX509Args
/// {
/// TrustStore = new Gcp.Iam.Inputs.WorkloadIdentityPoolProviderX509TrustStoreArgs
/// {
/// TrustAnchors = new[]
/// {
/// new Gcp.Iam.Inputs.WorkloadIdentityPoolProviderX509TrustStoreTrustAnchorArgs
/// {
/// PemCertificate = Std.File.Invoke(new()
/// {
/// Input = "test-fixtures/trust_anchor.pem",
/// }).Apply(invoke => invoke.Result),
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iam"
/// "github.com/pulumi/pulumi-std/sdk/go/std"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// pool, err := iam.NewWorkloadIdentityPool(ctx, "pool", &iam.WorkloadIdentityPoolArgs{
/// WorkloadIdentityPoolId: pulumi.String("example-pool"),
/// })
/// if err != nil {
/// return err
/// }
/// invokeFile, err := std.File(ctx, &std.FileArgs{
/// Input: "test-fixtures/trust_anchor.pem",
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = iam.NewWorkloadIdentityPoolProvider(ctx, "example", &iam.WorkloadIdentityPoolProviderArgs{
/// WorkloadIdentityPoolId:         pool.WorkloadIdentityPoolId,
/// WorkloadIdentityPoolProviderId: pulumi.String("example-prvdr"),
/// AttributeMapping: pulumi.StringMap{
/// "google.subject": pulumi.String("assertion.subject.dn.cn"),
/// },
/// X509: &iam.WorkloadIdentityPoolProviderX509Args{
/// TrustStore: &iam.WorkloadIdentityPoolProviderX509TrustStoreArgs{
/// TrustAnchors: iam.WorkloadIdentityPoolProviderX509TrustStoreTrustAnchorArray{
/// &iam.WorkloadIdentityPoolProviderX509TrustStoreTrustAnchorArgs{
/// PemCertificate: pulumi.String(invokeFile.Result),
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
/// import com.pulumi.gcp.iam.WorkloadIdentityPool;
/// import com.pulumi.gcp.iam.WorkloadIdentityPoolArgs;
/// import com.pulumi.gcp.iam.WorkloadIdentityPoolProvider;
/// import com.pulumi.gcp.iam.WorkloadIdentityPoolProviderArgs;
/// import com.pulumi.gcp.iam.inputs.WorkloadIdentityPoolProviderX509Args;
/// import com.pulumi.gcp.iam.inputs.WorkloadIdentityPoolProviderX509TrustStoreArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FileArgs;
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
/// var pool = new WorkloadIdentityPool("pool", WorkloadIdentityPoolArgs.builder()
/// .workloadIdentityPoolId("example-pool")
/// .build());
///
/// var example = new WorkloadIdentityPoolProvider("example", WorkloadIdentityPoolProviderArgs.builder()
/// .workloadIdentityPoolId(pool.workloadIdentityPoolId())
/// .workloadIdentityPoolProviderId("example-prvdr")
/// .attributeMapping(Map.of("google.subject", "assertion.subject.dn.cn"))
/// .x509(WorkloadIdentityPoolProviderX509Args.builder()
/// .trustStore(WorkloadIdentityPoolProviderX509TrustStoreArgs.builder()
/// .trustAnchors(WorkloadIdentityPoolProviderX509TrustStoreTrustAnchorArgs.builder()
/// .pemCertificate(StdFunctions.file(FileArgs.builder()
/// .input("test-fixtures/trust_anchor.pem")
/// .build()).result())
/// .build())
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// pool:
/// type: gcp:iam:WorkloadIdentityPool
/// properties:
/// workloadIdentityPoolId: example-pool
/// example:
/// type: gcp:iam:WorkloadIdentityPoolProvider
/// properties:
/// workloadIdentityPoolId: ${pool.workloadIdentityPoolId}
/// workloadIdentityPoolProviderId: example-prvdr
/// attributeMapping:
/// google.subject: assertion.subject.dn.cn
/// x509:
/// trustStore:
/// trustAnchors:
/// - pemCertificate:
/// fn::invoke:
/// function: std:file
/// arguments:
/// input: test-fixtures/trust_anchor.pem
/// return: result
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Iam Workload Identity Pool Provider X509 Full
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as std from "@pulumi/std";
///
/// const pool = new gcp.iam.WorkloadIdentityPool("pool", {workloadIdentityPoolId: "example-pool"});
/// const example = new gcp.iam.WorkloadIdentityPoolProvider("example", {
/// workloadIdentityPoolId: pool.workloadIdentityPoolId,
/// workloadIdentityPoolProviderId: "example-prvdr",
/// displayName: "Name of provider",
/// description: "X.509 identity pool provider for automated test",
/// disabled: true,
/// attributeMapping: {
/// "google.subject": "assertion.subject.dn.cn",
/// },
/// x509: {
/// trustStore: {
/// trustAnchors: [{
/// pemCertificate: std.file({
/// input: "test-fixtures/trust_anchor.pem",
/// }).then(invoke => invoke.result),
/// }],
/// intermediateCas: [{
/// pemCertificate: std.file({
/// input: "test-fixtures/intermediate_ca.pem",
/// }).then(invoke => invoke.result),
/// }],
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumi_std as std
///
/// pool = gcp.iam.WorkloadIdentityPool("pool", workload_identity_pool_id="example-pool")
/// example = gcp.iam.WorkloadIdentityPoolProvider("example",
/// workload_identity_pool_id=pool.workload_identity_pool_id,
/// workload_identity_pool_provider_id="example-prvdr",
/// display_name="Name of provider",
/// description="X.509 identity pool provider for automated test",
/// disabled=True,
/// attribute_mapping={
/// "google.subject": "assertion.subject.dn.cn",
/// },
/// x509={
/// "trust_store": {
/// "trust_anchors": [{
/// "pem_certificate": std.file(input="test-fixtures/trust_anchor.pem").result,
/// }],
/// "intermediate_cas": [{
/// "pem_certificate": std.file(input="test-fixtures/intermediate_ca.pem").result,
/// }],
/// },
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var pool = new Gcp.Iam.WorkloadIdentityPool("pool", new()
/// {
/// WorkloadIdentityPoolId = "example-pool",
/// });
///
/// var example = new Gcp.Iam.WorkloadIdentityPoolProvider("example", new()
/// {
/// WorkloadIdentityPoolId = pool.WorkloadIdentityPoolId,
/// WorkloadIdentityPoolProviderId = "example-prvdr",
/// DisplayName = "Name of provider",
/// Description = "X.509 identity pool provider for automated test",
/// Disabled = true,
/// AttributeMapping =
/// {
/// { "google.subject", "assertion.subject.dn.cn" },
/// },
/// X509 = new Gcp.Iam.Inputs.WorkloadIdentityPoolProviderX509Args
/// {
/// TrustStore = new Gcp.Iam.Inputs.WorkloadIdentityPoolProviderX509TrustStoreArgs
/// {
/// TrustAnchors = new[]
/// {
/// new Gcp.Iam.Inputs.WorkloadIdentityPoolProviderX509TrustStoreTrustAnchorArgs
/// {
/// PemCertificate = Std.File.Invoke(new()
/// {
/// Input = "test-fixtures/trust_anchor.pem",
/// }).Apply(invoke => invoke.Result),
/// },
/// },
/// IntermediateCas = new[]
/// {
/// new Gcp.Iam.Inputs.WorkloadIdentityPoolProviderX509TrustStoreIntermediateCaArgs
/// {
/// PemCertificate = Std.File.Invoke(new()
/// {
/// Input = "test-fixtures/intermediate_ca.pem",
/// }).Apply(invoke => invoke.Result),
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iam"
/// "github.com/pulumi/pulumi-std/sdk/go/std"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// pool, err := iam.NewWorkloadIdentityPool(ctx, "pool", &iam.WorkloadIdentityPoolArgs{
/// WorkloadIdentityPoolId: pulumi.String("example-pool"),
/// })
/// if err != nil {
/// return err
/// }
/// invokeFile, err := std.File(ctx, &std.FileArgs{
/// Input: "test-fixtures/trust_anchor.pem",
/// }, nil)
/// if err != nil {
/// return err
/// }
/// invokeFile1, err := std.File(ctx, &std.FileArgs{
/// Input: "test-fixtures/intermediate_ca.pem",
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = iam.NewWorkloadIdentityPoolProvider(ctx, "example", &iam.WorkloadIdentityPoolProviderArgs{
/// WorkloadIdentityPoolId:         pool.WorkloadIdentityPoolId,
/// WorkloadIdentityPoolProviderId: pulumi.String("example-prvdr"),
/// DisplayName:                    pulumi.String("Name of provider"),
/// Description:                    pulumi.String("X.509 identity pool provider for automated test"),
/// Disabled:                       pulumi.Bool(true),
/// AttributeMapping: pulumi.StringMap{
/// "google.subject": pulumi.String("assertion.subject.dn.cn"),
/// },
/// X509: &iam.WorkloadIdentityPoolProviderX509Args{
/// TrustStore: &iam.WorkloadIdentityPoolProviderX509TrustStoreArgs{
/// TrustAnchors: iam.WorkloadIdentityPoolProviderX509TrustStoreTrustAnchorArray{
/// &iam.WorkloadIdentityPoolProviderX509TrustStoreTrustAnchorArgs{
/// PemCertificate: pulumi.String(invokeFile.Result),
/// },
/// },
/// IntermediateCas: iam.WorkloadIdentityPoolProviderX509TrustStoreIntermediateCaArray{
/// &iam.WorkloadIdentityPoolProviderX509TrustStoreIntermediateCaArgs{
/// PemCertificate: pulumi.String(invokeFile1.Result),
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
/// import com.pulumi.gcp.iam.WorkloadIdentityPool;
/// import com.pulumi.gcp.iam.WorkloadIdentityPoolArgs;
/// import com.pulumi.gcp.iam.WorkloadIdentityPoolProvider;
/// import com.pulumi.gcp.iam.WorkloadIdentityPoolProviderArgs;
/// import com.pulumi.gcp.iam.inputs.WorkloadIdentityPoolProviderX509Args;
/// import com.pulumi.gcp.iam.inputs.WorkloadIdentityPoolProviderX509TrustStoreArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FileArgs;
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
/// var pool = new WorkloadIdentityPool("pool", WorkloadIdentityPoolArgs.builder()
/// .workloadIdentityPoolId("example-pool")
/// .build());
///
/// var example = new WorkloadIdentityPoolProvider("example", WorkloadIdentityPoolProviderArgs.builder()
/// .workloadIdentityPoolId(pool.workloadIdentityPoolId())
/// .workloadIdentityPoolProviderId("example-prvdr")
/// .displayName("Name of provider")
/// .description("X.509 identity pool provider for automated test")
/// .disabled(true)
/// .attributeMapping(Map.of("google.subject", "assertion.subject.dn.cn"))
/// .x509(WorkloadIdentityPoolProviderX509Args.builder()
/// .trustStore(WorkloadIdentityPoolProviderX509TrustStoreArgs.builder()
/// .trustAnchors(WorkloadIdentityPoolProviderX509TrustStoreTrustAnchorArgs.builder()
/// .pemCertificate(StdFunctions.file(FileArgs.builder()
/// .input("test-fixtures/trust_anchor.pem")
/// .build()).result())
/// .build())
/// .intermediateCas(WorkloadIdentityPoolProviderX509TrustStoreIntermediateCaArgs.builder()
/// .pemCertificate(StdFunctions.file(FileArgs.builder()
/// .input("test-fixtures/intermediate_ca.pem")
/// .build()).result())
/// .build())
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// pool:
/// type: gcp:iam:WorkloadIdentityPool
/// properties:
/// workloadIdentityPoolId: example-pool
/// example:
/// type: gcp:iam:WorkloadIdentityPoolProvider
/// properties:
/// workloadIdentityPoolId: ${pool.workloadIdentityPoolId}
/// workloadIdentityPoolProviderId: example-prvdr
/// displayName: Name of provider
/// description: X.509 identity pool provider for automated test
/// disabled: true
/// attributeMapping:
/// google.subject: assertion.subject.dn.cn
/// x509:
/// trustStore:
/// trustAnchors:
/// - pemCertificate:
/// fn::invoke:
/// function: std:file
/// arguments:
/// input: test-fixtures/trust_anchor.pem
/// return: result
/// intermediateCas:
/// - pemCertificate:
/// fn::invoke:
/// function: std:file
/// arguments:
/// input: test-fixtures/intermediate_ca.pem
/// return: result
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// WorkloadIdentityPoolProvider can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/global/workloadIdentityPools/{{workload_identity_pool_id}}/providers/{{workload_identity_pool_provider_id}}`
///
/// * `{{project}}/{{workload_identity_pool_id}}/{{workload_identity_pool_provider_id}}`
///
/// * `{{workload_identity_pool_id}}/{{workload_identity_pool_provider_id}}`
///
/// When using the `pulumi import` command, WorkloadIdentityPoolProvider can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:iam/workloadIdentityPoolProvider:WorkloadIdentityPoolProvider default projects/{{project}}/locations/global/workloadIdentityPools/{{workload_identity_pool_id}}/providers/{{workload_identity_pool_provider_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:iam/workloadIdentityPoolProvider:WorkloadIdentityPoolProvider default {{project}}/{{workload_identity_pool_id}}/{{workload_identity_pool_provider_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:iam/workloadIdentityPoolProvider:WorkloadIdentityPoolProvider default {{workload_identity_pool_id}}/{{workload_identity_pool_provider_id}}
/// ```
class WorkloadIdentityPoolProvider extends CustomResource {
  /// [A Common Expression Language](https://opensource.google/projects/cel) expression, in
  /// plain text, to restrict what otherwise valid authentication credentials issued by the
  /// provider should not be accepted.
  /// The expression must output a boolean representing whether to allow the federation.
  /// The following keywords may be referenced in the expressions:
  late final Output<String?> attributeCondition;

  /// Maps attributes from authentication credentials issued by an external identity provider
  /// to Google Cloud attributes, such as <span pulumi-lang-nodejs="`subject`" pulumi-lang-dotnet="`Subject`" pulumi-lang-go="`subject`" pulumi-lang-python="`subject`" pulumi-lang-yaml="`subject`" pulumi-lang-java="`subject`">`subject`</span> and <span pulumi-lang-nodejs="`segment`" pulumi-lang-dotnet="`Segment`" pulumi-lang-go="`segment`" pulumi-lang-python="`segment`" pulumi-lang-yaml="`segment`" pulumi-lang-java="`segment`">`segment`</span>.
  /// Each key must be a string specifying the Google Cloud IAM attribute to map to.
  /// The following keys are supported:
  /// * `google.subject`: The principal IAM is authenticating. You can reference this value
  /// in IAM bindings. This is also the subject that appears in Cloud Logging logs.
  /// Cannot exceed 127 characters.
  /// * `google.groups`: Groups the external identity belongs to. You can grant groups
  /// access to resources using an IAM `principalSet` binding; access applies to all
  /// members of the group.
  /// You can also provide custom attributes by specifying `attribute.{custom_attribute}`,
  /// where `{custom_attribute}` is the name of the custom attribute to be mapped. You can
  /// define a maximum of 50 custom attributes. The maximum length of a mapped attribute key
  /// is 100 characters, and the key may only contain the characters [a-z0-9_].
  /// You can reference these attributes in IAM policies to define fine-grained access for a
  /// workload to Google Cloud resources. For example:
  /// * `google.subject`:
  /// `principal://iam.googleapis.com/projects/{project}/locations/{location}/workloadIdentityPools/{pool}/subject/{value}`
  /// * `google.groups`:
  /// `principalSet://iam.googleapis.com/projects/{project}/locations/{location}/workloadIdentityPools/{pool}/group/{value}`
  /// * `attribute.{custom_attribute}`:
  /// `principalSet://iam.googleapis.com/projects/{project}/locations/{location}/workloadIdentityPools/{pool}/attribute.{custom_attribute}/{value}`
  /// Each value must be a [Common Expression Language](https://opensource.google/projects/cel)
  /// function that maps an identity provider credential to the normalized attribute specified
  /// by the corresponding map key.
  /// You can use the <span pulumi-lang-nodejs="`assertion`" pulumi-lang-dotnet="`Assertion`" pulumi-lang-go="`assertion`" pulumi-lang-python="`assertion`" pulumi-lang-yaml="`assertion`" pulumi-lang-java="`assertion`">`assertion`</span> keyword in the expression to access a JSON representation of
  /// the authentication credential issued by the provider.
  /// The maximum length of an attribute mapping expression is 2048 characters. When evaluated,
  /// the total size of all mapped attributes must not exceed 8KB.
  /// For AWS providers, the following rules apply:
  /// - If no attribute mapping is defined, the following default mapping applies:
  /// ```
  /// {
  /// "google.subject":"assertion.arn",
  /// "attribute.aws_role":
  /// "assertion.arn.contains('assumed-role')"
  /// " ? assertion.arn.extract('{account_arn}assumed-role/')"
  /// "   + 'assumed-role/'"
  /// "   + assertion.arn.extract('assumed-role/{role_name}/')"
  /// " : assertion.arn",
  /// }
  /// ```
  /// - If any custom attribute mappings are defined, they must include a mapping to the
  /// `google.subject` attribute.
  /// For OIDC providers, the following rules apply:
  /// - Custom attribute mappings must be defined, and must include a mapping to the
  /// `google.subject` attribute. For example, the following maps the <span pulumi-lang-nodejs="`sub`" pulumi-lang-dotnet="`Sub`" pulumi-lang-go="`sub`" pulumi-lang-python="`sub`" pulumi-lang-yaml="`sub`" pulumi-lang-java="`sub`">`sub`</span> claim of the
  /// incoming credential to the <span pulumi-lang-nodejs="`subject`" pulumi-lang-dotnet="`Subject`" pulumi-lang-go="`subject`" pulumi-lang-python="`subject`" pulumi-lang-yaml="`subject`" pulumi-lang-java="`subject`">`subject`</span> attribute on a Google token.
  /// ```
  /// {"google.subject": "assertion.sub"}
  /// ```
  late final Output<Map<String, String>?> attributeMapping;

  /// An Amazon Web Services identity provider. Not compatible with the property oidc or saml.
  /// Structure is documented below.
  late final Output<WorkloadIdentityPoolProviderAws?> aws;

  /// A description for the provider. Cannot exceed 256 characters.
  late final Output<String?> description;

  /// Whether the provider is disabled. You cannot use a disabled provider to exchange tokens.
  /// However, existing tokens still grant access.
  late final Output<bool?> disabled;

  /// A display name for the provider. Cannot exceed 32 characters.
  late final Output<String?> displayName;

  /// The resource name of the provider as
  /// `projects/{project_number}/locations/global/workloadIdentityPools/{workload_identity_pool_id}/providers/{workload_identity_pool_provider_id}`.
  late final Output<String> name;

  /// An OpenId Connect 1.0 identity provider. Not compatible with the property aws or saml.
  /// Structure is documented below.
  late final Output<WorkloadIdentityPoolProviderOidc?> oidc;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// An SAML 2.0 identity provider. Not compatible with the property oidc or aws.
  /// Structure is documented below.
  late final Output<WorkloadIdentityPoolProviderSaml?> saml;

  /// The state of the provider.
  /// * STATE_UNSPECIFIED: State unspecified.
  /// * ACTIVE: The provider is active, and may be used to validate authentication credentials.
  /// * DELETED: The provider is soft-deleted. Soft-deleted providers are permanently deleted
  /// after approximately 30 days. You can restore a soft-deleted provider using
  /// UndeleteWorkloadIdentityPoolProvider. You cannot reuse the ID of a soft-deleted provider
  /// until it is permanently deleted.
  late final Output<String> state;

  /// The ID used for the pool, which is the final component of the pool resource name. This
  /// value should be 4-32 characters, and may contain the characters [a-z0-9-]. The prefix
  /// `gcp-` is reserved for use by Google, and may not be specified.
  late final Output<String> workloadIdentityPoolId;

  /// The ID for the provider, which becomes the final component of the resource name. This
  /// value must be 4-32 characters, and may contain the characters [a-z0-9-]. The prefix
  /// `gcp-` is reserved for use by Google, and may not be specified.
  late final Output<String> workloadIdentityPoolProviderId;

  /// An X.509-type identity provider represents a CA. It is trusted to assert a
  /// client identity if the client has a certificate that chains up to this CA.
  /// Structure is documented below.
  late final Output<WorkloadIdentityPoolProviderX509?> x509;

  WorkloadIdentityPoolProvider(
    String name, {
    WorkloadIdentityPoolProviderArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:iam/workloadIdentityPoolProvider:WorkloadIdentityPoolProvider',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.attributeCondition = registerOutput<String?>('attributeCondition');
    this.attributeMapping =
        registerOutput<Map<String, String>?>('attributeMapping');
    this.aws = registerOutput<WorkloadIdentityPoolProviderAws?>('aws');
    this.description = registerOutput<String?>('description');
    this.disabled = registerOutput<bool?>('disabled');
    this.displayName = registerOutput<String?>('displayName');
    this.name = registerOutput<String>('name');
    this.oidc = registerOutput<WorkloadIdentityPoolProviderOidc?>('oidc');
    this.project = registerOutput<String>('project');
    this.saml = registerOutput<WorkloadIdentityPoolProviderSaml?>('saml');
    this.state = registerOutput<String>('state');
    this.workloadIdentityPoolId =
        registerOutput<String>('workloadIdentityPoolId');
    this.workloadIdentityPoolProviderId =
        registerOutput<String>('workloadIdentityPoolProviderId');
    this.x509 = registerOutput<WorkloadIdentityPoolProviderX509?>('x509');
  }
}
