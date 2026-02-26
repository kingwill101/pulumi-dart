import 'package:pulumi/pulumi.dart';
import 'listing_iam_policy_args.dart';

/// Three different resources help you manage your IAM policy for BigQuery Analytics Hub Listing. Each of these resources serves a different use case:
///
/// * <span pulumi-lang-nodejs="`gcp.bigqueryanalyticshub.ListingIamPolicy`" pulumi-lang-dotnet="`gcp.bigqueryanalyticshub.ListingIamPolicy`" pulumi-lang-go="`bigqueryanalyticshub.ListingIamPolicy`" pulumi-lang-python="`bigqueryanalyticshub.ListingIamPolicy`" pulumi-lang-yaml="`gcp.bigqueryanalyticshub.ListingIamPolicy`" pulumi-lang-java="`gcp.bigqueryanalyticshub.ListingIamPolicy`">`gcp.bigqueryanalyticshub.ListingIamPolicy`</span>: Authoritative. Sets the IAM policy for the listing and replaces any existing policy already attached.
/// * <span pulumi-lang-nodejs="`gcp.bigqueryanalyticshub.ListingIamBinding`" pulumi-lang-dotnet="`gcp.bigqueryanalyticshub.ListingIamBinding`" pulumi-lang-go="`bigqueryanalyticshub.ListingIamBinding`" pulumi-lang-python="`bigqueryanalyticshub.ListingIamBinding`" pulumi-lang-yaml="`gcp.bigqueryanalyticshub.ListingIamBinding`" pulumi-lang-java="`gcp.bigqueryanalyticshub.ListingIamBinding`">`gcp.bigqueryanalyticshub.ListingIamBinding`</span>: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the listing are preserved.
/// * <span pulumi-lang-nodejs="`gcp.bigqueryanalyticshub.ListingIamMember`" pulumi-lang-dotnet="`gcp.bigqueryanalyticshub.ListingIamMember`" pulumi-lang-go="`bigqueryanalyticshub.ListingIamMember`" pulumi-lang-python="`bigqueryanalyticshub.ListingIamMember`" pulumi-lang-yaml="`gcp.bigqueryanalyticshub.ListingIamMember`" pulumi-lang-java="`gcp.bigqueryanalyticshub.ListingIamMember`">`gcp.bigqueryanalyticshub.ListingIamMember`</span>: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the listing are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * <span pulumi-lang-nodejs="`gcp.bigqueryanalyticshub.ListingIamPolicy`" pulumi-lang-dotnet="`gcp.bigqueryanalyticshub.ListingIamPolicy`" pulumi-lang-go="`bigqueryanalyticshub.ListingIamPolicy`" pulumi-lang-python="`bigqueryanalyticshub.ListingIamPolicy`" pulumi-lang-yaml="`gcp.bigqueryanalyticshub.ListingIamPolicy`" pulumi-lang-java="`gcp.bigqueryanalyticshub.ListingIamPolicy`">`gcp.bigqueryanalyticshub.ListingIamPolicy`</span>: Retrieves the IAM policy for the listing
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.bigqueryanalyticshub.ListingIamPolicy`" pulumi-lang-dotnet="`gcp.bigqueryanalyticshub.ListingIamPolicy`" pulumi-lang-go="`bigqueryanalyticshub.ListingIamPolicy`" pulumi-lang-python="`bigqueryanalyticshub.ListingIamPolicy`" pulumi-lang-yaml="`gcp.bigqueryanalyticshub.ListingIamPolicy`" pulumi-lang-java="`gcp.bigqueryanalyticshub.ListingIamPolicy`">`gcp.bigqueryanalyticshub.ListingIamPolicy`</span> **cannot** be used in conjunction with <span pulumi-lang-nodejs="`gcp.bigqueryanalyticshub.ListingIamBinding`" pulumi-lang-dotnet="`gcp.bigqueryanalyticshub.ListingIamBinding`" pulumi-lang-go="`bigqueryanalyticshub.ListingIamBinding`" pulumi-lang-python="`bigqueryanalyticshub.ListingIamBinding`" pulumi-lang-yaml="`gcp.bigqueryanalyticshub.ListingIamBinding`" pulumi-lang-java="`gcp.bigqueryanalyticshub.ListingIamBinding`">`gcp.bigqueryanalyticshub.ListingIamBinding`</span> and <span pulumi-lang-nodejs="`gcp.bigqueryanalyticshub.ListingIamMember`" pulumi-lang-dotnet="`gcp.bigqueryanalyticshub.ListingIamMember`" pulumi-lang-go="`bigqueryanalyticshub.ListingIamMember`" pulumi-lang-python="`bigqueryanalyticshub.ListingIamMember`" pulumi-lang-yaml="`gcp.bigqueryanalyticshub.ListingIamMember`" pulumi-lang-java="`gcp.bigqueryanalyticshub.ListingIamMember`">`gcp.bigqueryanalyticshub.ListingIamMember`</span> or they will fight over what your policy should be.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.bigqueryanalyticshub.ListingIamBinding`" pulumi-lang-dotnet="`gcp.bigqueryanalyticshub.ListingIamBinding`" pulumi-lang-go="`bigqueryanalyticshub.ListingIamBinding`" pulumi-lang-python="`bigqueryanalyticshub.ListingIamBinding`" pulumi-lang-yaml="`gcp.bigqueryanalyticshub.ListingIamBinding`" pulumi-lang-java="`gcp.bigqueryanalyticshub.ListingIamBinding`">`gcp.bigqueryanalyticshub.ListingIamBinding`</span> resources **can be** used in conjunction with <span pulumi-lang-nodejs="`gcp.bigqueryanalyticshub.ListingIamMember`" pulumi-lang-dotnet="`gcp.bigqueryanalyticshub.ListingIamMember`" pulumi-lang-go="`bigqueryanalyticshub.ListingIamMember`" pulumi-lang-python="`bigqueryanalyticshub.ListingIamMember`" pulumi-lang-yaml="`gcp.bigqueryanalyticshub.ListingIamMember`" pulumi-lang-java="`gcp.bigqueryanalyticshub.ListingIamMember`">`gcp.bigqueryanalyticshub.ListingIamMember`</span> resources **only if** they do not grant privilege to the same role.
///
///
///
/// ##<span pulumi-lang-nodejs=" gcp.bigqueryanalyticshub.ListingIamPolicy
/// " pulumi-lang-dotnet=" gcp.bigqueryanalyticshub.ListingIamPolicy
/// " pulumi-lang-go=" bigqueryanalyticshub.ListingIamPolicy
/// " pulumi-lang-python=" bigqueryanalyticshub.ListingIamPolicy
/// " pulumi-lang-yaml=" gcp.bigqueryanalyticshub.ListingIamPolicy
/// " pulumi-lang-java=" gcp.bigqueryanalyticshub.ListingIamPolicy
/// "> gcp.bigqueryanalyticshub.ListingIamPolicy
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin = gcp.organizations.getIAMPolicy({
/// bindings: [{
/// role: "roles/viewer",
/// members: ["user:jane@example.com"],
/// }],
/// });
/// const policy = new gcp.bigqueryanalyticshub.ListingIamPolicy("policy", {
/// project: listing.project,
/// location: listing.location,
/// dataExchangeId: listing.dataExchangeId,
/// listingId: listing.listingId,
/// policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
/// "role": "roles/viewer",
/// "members": ["user:jane@example.com"],
/// }])
/// policy = gcp.bigqueryanalyticshub.ListingIamPolicy("policy",
/// project=listing["project"],
/// location=listing["location"],
/// data_exchange_id=listing["dataExchangeId"],
/// listing_id=listing["listingId"],
/// policy_data=admin.policy_data)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var admin = Gcp.Organizations.GetIAMPolicy.Invoke(new()
/// {
/// Bindings = new[]
/// {
/// new Gcp.Organizations.Inputs.GetIAMPolicyBindingInputArgs
/// {
/// Role = "roles/viewer",
/// Members = new[]
/// {
/// "user:jane@example.com",
/// },
/// },
/// },
/// });
///
/// var policy = new Gcp.BigQueryAnalyticsHub.ListingIamPolicy("policy", new()
/// {
/// Project = listing.Project,
/// Location = listing.Location,
/// DataExchangeId = listing.DataExchangeId,
/// ListingId = listing.ListingId,
/// PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigqueryanalyticshub"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// admin, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// Bindings: []organizations.GetIAMPolicyBinding{
/// {
/// Role: "roles/viewer",
/// Members: []string{
/// "user:jane@example.com",
/// },
/// },
/// },
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = bigqueryanalyticshub.NewListingIamPolicy(ctx, "policy", &bigqueryanalyticshub.ListingIamPolicyArgs{
/// Project:        pulumi.Any(listing.Project),
/// Location:       pulumi.Any(listing.Location),
/// DataExchangeId: pulumi.Any(listing.DataExchangeId),
/// ListingId:      pulumi.Any(listing.ListingId),
/// PolicyData:     pulumi.String(admin.PolicyData),
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
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetIAMPolicyArgs;
/// import com.pulumi.gcp.bigqueryanalyticshub.ListingIamPolicy;
/// import com.pulumi.gcp.bigqueryanalyticshub.ListingIamPolicyArgs;
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
/// final var admin = OrganizationsFunctions.getIAMPolicy(GetIAMPolicyArgs.builder()
/// .bindings(GetIAMPolicyBindingArgs.builder()
/// .role("roles/viewer")
/// .members("user:jane@example.com")
/// .build())
/// .build());
///
/// var policy = new ListingIamPolicy("policy", ListingIamPolicyArgs.builder()
/// .project(listing.project())
/// .location(listing.location())
/// .dataExchangeId(listing.dataExchangeId())
/// .listingId(listing.listingId())
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// policy:
/// type: gcp:bigqueryanalyticshub:ListingIamPolicy
/// properties:
/// project: ${listing.project}
/// location: ${listing.location}
/// dataExchangeId: ${listing.dataExchangeId}
/// listingId: ${listing.listingId}
/// policyData: ${admin.policyData}
/// variables:
/// admin:
/// fn::invoke:
/// function: gcp:organizations:getIAMPolicy
/// arguments:
/// bindings:
/// - role: roles/viewer
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.bigqueryanalyticshub.ListingIamBinding
/// " pulumi-lang-dotnet=" gcp.bigqueryanalyticshub.ListingIamBinding
/// " pulumi-lang-go=" bigqueryanalyticshub.ListingIamBinding
/// " pulumi-lang-python=" bigqueryanalyticshub.ListingIamBinding
/// " pulumi-lang-yaml=" gcp.bigqueryanalyticshub.ListingIamBinding
/// " pulumi-lang-java=" gcp.bigqueryanalyticshub.ListingIamBinding
/// "> gcp.bigqueryanalyticshub.ListingIamBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.bigqueryanalyticshub.ListingIamBinding("binding", {
/// project: listing.project,
/// location: listing.location,
/// dataExchangeId: listing.dataExchangeId,
/// listingId: listing.listingId,
/// role: "roles/viewer",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.bigqueryanalyticshub.ListingIamBinding("binding",
/// project=listing["project"],
/// location=listing["location"],
/// data_exchange_id=listing["dataExchangeId"],
/// listing_id=listing["listingId"],
/// role="roles/viewer",
/// members=["user:jane@example.com"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var binding = new Gcp.BigQueryAnalyticsHub.ListingIamBinding("binding", new()
/// {
/// Project = listing.Project,
/// Location = listing.Location,
/// DataExchangeId = listing.DataExchangeId,
/// ListingId = listing.ListingId,
/// Role = "roles/viewer",
/// Members = new[]
/// {
/// "user:jane@example.com",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigqueryanalyticshub"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := bigqueryanalyticshub.NewListingIamBinding(ctx, "binding", &bigqueryanalyticshub.ListingIamBindingArgs{
/// Project:        pulumi.Any(listing.Project),
/// Location:       pulumi.Any(listing.Location),
/// DataExchangeId: pulumi.Any(listing.DataExchangeId),
/// ListingId:      pulumi.Any(listing.ListingId),
/// Role:           pulumi.String("roles/viewer"),
/// Members: pulumi.StringArray{
/// pulumi.String("user:jane@example.com"),
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
/// import com.pulumi.gcp.bigqueryanalyticshub.ListingIamBinding;
/// import com.pulumi.gcp.bigqueryanalyticshub.ListingIamBindingArgs;
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
/// var binding = new ListingIamBinding("binding", ListingIamBindingArgs.builder()
/// .project(listing.project())
/// .location(listing.location())
/// .dataExchangeId(listing.dataExchangeId())
/// .listingId(listing.listingId())
/// .role("roles/viewer")
/// .members("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// binding:
/// type: gcp:bigqueryanalyticshub:ListingIamBinding
/// properties:
/// project: ${listing.project}
/// location: ${listing.location}
/// dataExchangeId: ${listing.dataExchangeId}
/// listingId: ${listing.listingId}
/// role: roles/viewer
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.bigqueryanalyticshub.ListingIamMember
/// " pulumi-lang-dotnet=" gcp.bigqueryanalyticshub.ListingIamMember
/// " pulumi-lang-go=" bigqueryanalyticshub.ListingIamMember
/// " pulumi-lang-python=" bigqueryanalyticshub.ListingIamMember
/// " pulumi-lang-yaml=" gcp.bigqueryanalyticshub.ListingIamMember
/// " pulumi-lang-java=" gcp.bigqueryanalyticshub.ListingIamMember
/// "> gcp.bigqueryanalyticshub.ListingIamMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.bigqueryanalyticshub.ListingIamMember("member", {
/// project: listing.project,
/// location: listing.location,
/// dataExchangeId: listing.dataExchangeId,
/// listingId: listing.listingId,
/// role: "roles/viewer",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.bigqueryanalyticshub.ListingIamMember("member",
/// project=listing["project"],
/// location=listing["location"],
/// data_exchange_id=listing["dataExchangeId"],
/// listing_id=listing["listingId"],
/// role="roles/viewer",
/// member="user:jane@example.com")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var member = new Gcp.BigQueryAnalyticsHub.ListingIamMember("member", new()
/// {
/// Project = listing.Project,
/// Location = listing.Location,
/// DataExchangeId = listing.DataExchangeId,
/// ListingId = listing.ListingId,
/// Role = "roles/viewer",
/// Member = "user:jane@example.com",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigqueryanalyticshub"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := bigqueryanalyticshub.NewListingIamMember(ctx, "member", &bigqueryanalyticshub.ListingIamMemberArgs{
/// Project:        pulumi.Any(listing.Project),
/// Location:       pulumi.Any(listing.Location),
/// DataExchangeId: pulumi.Any(listing.DataExchangeId),
/// ListingId:      pulumi.Any(listing.ListingId),
/// Role:           pulumi.String("roles/viewer"),
/// Member:         pulumi.String("user:jane@example.com"),
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
/// import com.pulumi.gcp.bigqueryanalyticshub.ListingIamMember;
/// import com.pulumi.gcp.bigqueryanalyticshub.ListingIamMemberArgs;
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
/// var member = new ListingIamMember("member", ListingIamMemberArgs.builder()
/// .project(listing.project())
/// .location(listing.location())
/// .dataExchangeId(listing.dataExchangeId())
/// .listingId(listing.listingId())
/// .role("roles/viewer")
/// .member("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// member:
/// type: gcp:bigqueryanalyticshub:ListingIamMember
/// properties:
/// project: ${listing.project}
/// location: ${listing.location}
/// dataExchangeId: ${listing.dataExchangeId}
/// listingId: ${listing.listingId}
/// role: roles/viewer
/// member: user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
///
/// ## This resource supports User Project Overrides.
///
/// -
///
/// # IAM policy for BigQuery Analytics Hub Listing
///
/// Three different resources help you manage your IAM policy for BigQuery Analytics Hub Listing. Each of these resources serves a different use case:
///
/// * <span pulumi-lang-nodejs="`gcp.bigqueryanalyticshub.ListingIamPolicy`" pulumi-lang-dotnet="`gcp.bigqueryanalyticshub.ListingIamPolicy`" pulumi-lang-go="`bigqueryanalyticshub.ListingIamPolicy`" pulumi-lang-python="`bigqueryanalyticshub.ListingIamPolicy`" pulumi-lang-yaml="`gcp.bigqueryanalyticshub.ListingIamPolicy`" pulumi-lang-java="`gcp.bigqueryanalyticshub.ListingIamPolicy`">`gcp.bigqueryanalyticshub.ListingIamPolicy`</span>: Authoritative. Sets the IAM policy for the listing and replaces any existing policy already attached.
/// * <span pulumi-lang-nodejs="`gcp.bigqueryanalyticshub.ListingIamBinding`" pulumi-lang-dotnet="`gcp.bigqueryanalyticshub.ListingIamBinding`" pulumi-lang-go="`bigqueryanalyticshub.ListingIamBinding`" pulumi-lang-python="`bigqueryanalyticshub.ListingIamBinding`" pulumi-lang-yaml="`gcp.bigqueryanalyticshub.ListingIamBinding`" pulumi-lang-java="`gcp.bigqueryanalyticshub.ListingIamBinding`">`gcp.bigqueryanalyticshub.ListingIamBinding`</span>: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the listing are preserved.
/// * <span pulumi-lang-nodejs="`gcp.bigqueryanalyticshub.ListingIamMember`" pulumi-lang-dotnet="`gcp.bigqueryanalyticshub.ListingIamMember`" pulumi-lang-go="`bigqueryanalyticshub.ListingIamMember`" pulumi-lang-python="`bigqueryanalyticshub.ListingIamMember`" pulumi-lang-yaml="`gcp.bigqueryanalyticshub.ListingIamMember`" pulumi-lang-java="`gcp.bigqueryanalyticshub.ListingIamMember`">`gcp.bigqueryanalyticshub.ListingIamMember`</span>: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the listing are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * <span pulumi-lang-nodejs="`gcp.bigqueryanalyticshub.ListingIamPolicy`" pulumi-lang-dotnet="`gcp.bigqueryanalyticshub.ListingIamPolicy`" pulumi-lang-go="`bigqueryanalyticshub.ListingIamPolicy`" pulumi-lang-python="`bigqueryanalyticshub.ListingIamPolicy`" pulumi-lang-yaml="`gcp.bigqueryanalyticshub.ListingIamPolicy`" pulumi-lang-java="`gcp.bigqueryanalyticshub.ListingIamPolicy`">`gcp.bigqueryanalyticshub.ListingIamPolicy`</span>: Retrieves the IAM policy for the listing
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.bigqueryanalyticshub.ListingIamPolicy`" pulumi-lang-dotnet="`gcp.bigqueryanalyticshub.ListingIamPolicy`" pulumi-lang-go="`bigqueryanalyticshub.ListingIamPolicy`" pulumi-lang-python="`bigqueryanalyticshub.ListingIamPolicy`" pulumi-lang-yaml="`gcp.bigqueryanalyticshub.ListingIamPolicy`" pulumi-lang-java="`gcp.bigqueryanalyticshub.ListingIamPolicy`">`gcp.bigqueryanalyticshub.ListingIamPolicy`</span> **cannot** be used in conjunction with <span pulumi-lang-nodejs="`gcp.bigqueryanalyticshub.ListingIamBinding`" pulumi-lang-dotnet="`gcp.bigqueryanalyticshub.ListingIamBinding`" pulumi-lang-go="`bigqueryanalyticshub.ListingIamBinding`" pulumi-lang-python="`bigqueryanalyticshub.ListingIamBinding`" pulumi-lang-yaml="`gcp.bigqueryanalyticshub.ListingIamBinding`" pulumi-lang-java="`gcp.bigqueryanalyticshub.ListingIamBinding`">`gcp.bigqueryanalyticshub.ListingIamBinding`</span> and <span pulumi-lang-nodejs="`gcp.bigqueryanalyticshub.ListingIamMember`" pulumi-lang-dotnet="`gcp.bigqueryanalyticshub.ListingIamMember`" pulumi-lang-go="`bigqueryanalyticshub.ListingIamMember`" pulumi-lang-python="`bigqueryanalyticshub.ListingIamMember`" pulumi-lang-yaml="`gcp.bigqueryanalyticshub.ListingIamMember`" pulumi-lang-java="`gcp.bigqueryanalyticshub.ListingIamMember`">`gcp.bigqueryanalyticshub.ListingIamMember`</span> or they will fight over what your policy should be.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.bigqueryanalyticshub.ListingIamBinding`" pulumi-lang-dotnet="`gcp.bigqueryanalyticshub.ListingIamBinding`" pulumi-lang-go="`bigqueryanalyticshub.ListingIamBinding`" pulumi-lang-python="`bigqueryanalyticshub.ListingIamBinding`" pulumi-lang-yaml="`gcp.bigqueryanalyticshub.ListingIamBinding`" pulumi-lang-java="`gcp.bigqueryanalyticshub.ListingIamBinding`">`gcp.bigqueryanalyticshub.ListingIamBinding`</span> resources **can be** used in conjunction with <span pulumi-lang-nodejs="`gcp.bigqueryanalyticshub.ListingIamMember`" pulumi-lang-dotnet="`gcp.bigqueryanalyticshub.ListingIamMember`" pulumi-lang-go="`bigqueryanalyticshub.ListingIamMember`" pulumi-lang-python="`bigqueryanalyticshub.ListingIamMember`" pulumi-lang-yaml="`gcp.bigqueryanalyticshub.ListingIamMember`" pulumi-lang-java="`gcp.bigqueryanalyticshub.ListingIamMember`">`gcp.bigqueryanalyticshub.ListingIamMember`</span> resources **only if** they do not grant privilege to the same role.
///
///
///
/// ##<span pulumi-lang-nodejs=" gcp.bigqueryanalyticshub.ListingIamPolicy
/// " pulumi-lang-dotnet=" gcp.bigqueryanalyticshub.ListingIamPolicy
/// " pulumi-lang-go=" bigqueryanalyticshub.ListingIamPolicy
/// " pulumi-lang-python=" bigqueryanalyticshub.ListingIamPolicy
/// " pulumi-lang-yaml=" gcp.bigqueryanalyticshub.ListingIamPolicy
/// " pulumi-lang-java=" gcp.bigqueryanalyticshub.ListingIamPolicy
/// "> gcp.bigqueryanalyticshub.ListingIamPolicy
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin = gcp.organizations.getIAMPolicy({
/// bindings: [{
/// role: "roles/viewer",
/// members: ["user:jane@example.com"],
/// }],
/// });
/// const policy = new gcp.bigqueryanalyticshub.ListingIamPolicy("policy", {
/// project: listing.project,
/// location: listing.location,
/// dataExchangeId: listing.dataExchangeId,
/// listingId: listing.listingId,
/// policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
/// "role": "roles/viewer",
/// "members": ["user:jane@example.com"],
/// }])
/// policy = gcp.bigqueryanalyticshub.ListingIamPolicy("policy",
/// project=listing["project"],
/// location=listing["location"],
/// data_exchange_id=listing["dataExchangeId"],
/// listing_id=listing["listingId"],
/// policy_data=admin.policy_data)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var admin = Gcp.Organizations.GetIAMPolicy.Invoke(new()
/// {
/// Bindings = new[]
/// {
/// new Gcp.Organizations.Inputs.GetIAMPolicyBindingInputArgs
/// {
/// Role = "roles/viewer",
/// Members = new[]
/// {
/// "user:jane@example.com",
/// },
/// },
/// },
/// });
///
/// var policy = new Gcp.BigQueryAnalyticsHub.ListingIamPolicy("policy", new()
/// {
/// Project = listing.Project,
/// Location = listing.Location,
/// DataExchangeId = listing.DataExchangeId,
/// ListingId = listing.ListingId,
/// PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigqueryanalyticshub"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// admin, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// Bindings: []organizations.GetIAMPolicyBinding{
/// {
/// Role: "roles/viewer",
/// Members: []string{
/// "user:jane@example.com",
/// },
/// },
/// },
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = bigqueryanalyticshub.NewListingIamPolicy(ctx, "policy", &bigqueryanalyticshub.ListingIamPolicyArgs{
/// Project:        pulumi.Any(listing.Project),
/// Location:       pulumi.Any(listing.Location),
/// DataExchangeId: pulumi.Any(listing.DataExchangeId),
/// ListingId:      pulumi.Any(listing.ListingId),
/// PolicyData:     pulumi.String(admin.PolicyData),
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
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetIAMPolicyArgs;
/// import com.pulumi.gcp.bigqueryanalyticshub.ListingIamPolicy;
/// import com.pulumi.gcp.bigqueryanalyticshub.ListingIamPolicyArgs;
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
/// final var admin = OrganizationsFunctions.getIAMPolicy(GetIAMPolicyArgs.builder()
/// .bindings(GetIAMPolicyBindingArgs.builder()
/// .role("roles/viewer")
/// .members("user:jane@example.com")
/// .build())
/// .build());
///
/// var policy = new ListingIamPolicy("policy", ListingIamPolicyArgs.builder()
/// .project(listing.project())
/// .location(listing.location())
/// .dataExchangeId(listing.dataExchangeId())
/// .listingId(listing.listingId())
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// policy:
/// type: gcp:bigqueryanalyticshub:ListingIamPolicy
/// properties:
/// project: ${listing.project}
/// location: ${listing.location}
/// dataExchangeId: ${listing.dataExchangeId}
/// listingId: ${listing.listingId}
/// policyData: ${admin.policyData}
/// variables:
/// admin:
/// fn::invoke:
/// function: gcp:organizations:getIAMPolicy
/// arguments:
/// bindings:
/// - role: roles/viewer
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.bigqueryanalyticshub.ListingIamBinding
/// " pulumi-lang-dotnet=" gcp.bigqueryanalyticshub.ListingIamBinding
/// " pulumi-lang-go=" bigqueryanalyticshub.ListingIamBinding
/// " pulumi-lang-python=" bigqueryanalyticshub.ListingIamBinding
/// " pulumi-lang-yaml=" gcp.bigqueryanalyticshub.ListingIamBinding
/// " pulumi-lang-java=" gcp.bigqueryanalyticshub.ListingIamBinding
/// "> gcp.bigqueryanalyticshub.ListingIamBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const binding = new gcp.bigqueryanalyticshub.ListingIamBinding("binding", {
/// project: listing.project,
/// location: listing.location,
/// dataExchangeId: listing.dataExchangeId,
/// listingId: listing.listingId,
/// role: "roles/viewer",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// binding = gcp.bigqueryanalyticshub.ListingIamBinding("binding",
/// project=listing["project"],
/// location=listing["location"],
/// data_exchange_id=listing["dataExchangeId"],
/// listing_id=listing["listingId"],
/// role="roles/viewer",
/// members=["user:jane@example.com"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var binding = new Gcp.BigQueryAnalyticsHub.ListingIamBinding("binding", new()
/// {
/// Project = listing.Project,
/// Location = listing.Location,
/// DataExchangeId = listing.DataExchangeId,
/// ListingId = listing.ListingId,
/// Role = "roles/viewer",
/// Members = new[]
/// {
/// "user:jane@example.com",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigqueryanalyticshub"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := bigqueryanalyticshub.NewListingIamBinding(ctx, "binding", &bigqueryanalyticshub.ListingIamBindingArgs{
/// Project:        pulumi.Any(listing.Project),
/// Location:       pulumi.Any(listing.Location),
/// DataExchangeId: pulumi.Any(listing.DataExchangeId),
/// ListingId:      pulumi.Any(listing.ListingId),
/// Role:           pulumi.String("roles/viewer"),
/// Members: pulumi.StringArray{
/// pulumi.String("user:jane@example.com"),
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
/// import com.pulumi.gcp.bigqueryanalyticshub.ListingIamBinding;
/// import com.pulumi.gcp.bigqueryanalyticshub.ListingIamBindingArgs;
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
/// var binding = new ListingIamBinding("binding", ListingIamBindingArgs.builder()
/// .project(listing.project())
/// .location(listing.location())
/// .dataExchangeId(listing.dataExchangeId())
/// .listingId(listing.listingId())
/// .role("roles/viewer")
/// .members("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// binding:
/// type: gcp:bigqueryanalyticshub:ListingIamBinding
/// properties:
/// project: ${listing.project}
/// location: ${listing.location}
/// dataExchangeId: ${listing.dataExchangeId}
/// listingId: ${listing.listingId}
/// role: roles/viewer
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.bigqueryanalyticshub.ListingIamMember
/// " pulumi-lang-dotnet=" gcp.bigqueryanalyticshub.ListingIamMember
/// " pulumi-lang-go=" bigqueryanalyticshub.ListingIamMember
/// " pulumi-lang-python=" bigqueryanalyticshub.ListingIamMember
/// " pulumi-lang-yaml=" gcp.bigqueryanalyticshub.ListingIamMember
/// " pulumi-lang-java=" gcp.bigqueryanalyticshub.ListingIamMember
/// "> gcp.bigqueryanalyticshub.ListingIamMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const member = new gcp.bigqueryanalyticshub.ListingIamMember("member", {
/// project: listing.project,
/// location: listing.location,
/// dataExchangeId: listing.dataExchangeId,
/// listingId: listing.listingId,
/// role: "roles/viewer",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// member = gcp.bigqueryanalyticshub.ListingIamMember("member",
/// project=listing["project"],
/// location=listing["location"],
/// data_exchange_id=listing["dataExchangeId"],
/// listing_id=listing["listingId"],
/// role="roles/viewer",
/// member="user:jane@example.com")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var member = new Gcp.BigQueryAnalyticsHub.ListingIamMember("member", new()
/// {
/// Project = listing.Project,
/// Location = listing.Location,
/// DataExchangeId = listing.DataExchangeId,
/// ListingId = listing.ListingId,
/// Role = "roles/viewer",
/// Member = "user:jane@example.com",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigqueryanalyticshub"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := bigqueryanalyticshub.NewListingIamMember(ctx, "member", &bigqueryanalyticshub.ListingIamMemberArgs{
/// Project:        pulumi.Any(listing.Project),
/// Location:       pulumi.Any(listing.Location),
/// DataExchangeId: pulumi.Any(listing.DataExchangeId),
/// ListingId:      pulumi.Any(listing.ListingId),
/// Role:           pulumi.String("roles/viewer"),
/// Member:         pulumi.String("user:jane@example.com"),
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
/// import com.pulumi.gcp.bigqueryanalyticshub.ListingIamMember;
/// import com.pulumi.gcp.bigqueryanalyticshub.ListingIamMemberArgs;
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
/// var member = new ListingIamMember("member", ListingIamMemberArgs.builder()
/// .project(listing.project())
/// .location(listing.location())
/// .dataExchangeId(listing.dataExchangeId())
/// .listingId(listing.listingId())
/// .role("roles/viewer")
/// .member("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// member:
/// type: gcp:bigqueryanalyticshub:ListingIamMember
/// properties:
/// project: ${listing.project}
/// location: ${listing.location}
/// dataExchangeId: ${listing.dataExchangeId}
/// listingId: ${listing.listingId}
/// role: roles/viewer
/// member: user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// For all import syntaxes, the "resource in question" can take any of the following forms:
///
/// * projects/{{project}}/locations/{{location}}/dataExchanges/{{data_exchange_id}}/listings/{{listing_id}}
///
/// * {{project}}/{{location}}/{{data_exchange_id}}/{{listing_id}}
///
/// * {{location}}/{{data_exchange_id}}/{{listing_id}}
///
/// * {{listing_id}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// BigQuery Analytics Hub listing IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
///
/// ```sh
/// $ pulumi import gcp:bigqueryanalyticshub/listingIamPolicy:ListingIamPolicy editor "projects/{{project}}/locations/{{location}}/dataExchanges/{{data_exchange_id}}/listings/{{listing_id}} roles/viewer user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
///
/// ```sh
/// $ pulumi import gcp:bigqueryanalyticshub/listingIamPolicy:ListingIamPolicy editor "projects/{{project}}/locations/{{location}}/dataExchanges/{{data_exchange_id}}/listings/{{listing_id}} roles/viewer"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
///
/// ```sh
/// $ pulumi import gcp:bigqueryanalyticshub/listingIamPolicy:ListingIamPolicy editor projects/{{project}}/locations/{{location}}/dataExchanges/{{data_exchange_id}}/listings/{{listing_id}}
/// ```
///
/// -> **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class ListingIamPolicy extends CustomResource {
  /// The ID of the data exchange. Must contain only Unicode letters, numbers (0-9), underscores (_). Should not use characters that require URL-escaping, or characters outside of ASCII, spaces. Used to find the parent resource to bind the IAM policy to
  late final Output<String> dataExchangeId;

  /// (Computed) The etag of the IAM policy.
  late final Output<String> etag;

  /// Used to find the parent resource to bind the IAM policy to
  late final Output<String> listingId;

  /// The name of the location this data exchange listing.
  /// Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no location is provided in the parent identifier and no
  /// location is specified, it is taken from the provider configuration.
  late final Output<String> location;

  /// The policy data generated by
  /// a <span pulumi-lang-nodejs="`gcp.organizations.getIAMPolicy`" pulumi-lang-dotnet="`gcp.organizations.getIAMPolicy`" pulumi-lang-go="`organizations.getIAMPolicy`" pulumi-lang-python="`organizations_get_iam_policy`" pulumi-lang-yaml="`gcp.organizations.getIAMPolicy`" pulumi-lang-java="`gcp.organizations.getIAMPolicy`">`gcp.organizations.getIAMPolicy`</span> data source.
  late final Output<String> policyData;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  late final Output<String> project;

  ListingIamPolicy(
    String name, {
    ListingIamPolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:bigqueryanalyticshub/listingIamPolicy:ListingIamPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.dataExchangeId = Output.createUnknown<String>();
    this.etag = Output.createUnknown<String>();
    this.listingId = Output.createUnknown<String>();
    this.location = Output.createUnknown<String>();
    this.policyData = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
  }
}
