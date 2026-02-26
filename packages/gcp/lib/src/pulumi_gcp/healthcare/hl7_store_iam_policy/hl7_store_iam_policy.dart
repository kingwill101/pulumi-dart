import 'package:pulumi/pulumi.dart';
import 'hl7_store_iam_policy_args.dart';

/// Three different resources help you manage your IAM policy for Healthcare HL7v2 store. Each of these resources serves a different use case:
///
/// * <span pulumi-lang-nodejs="`gcp.healthcare.Hl7StoreIamPolicy`" pulumi-lang-dotnet="`gcp.healthcare.Hl7StoreIamPolicy`" pulumi-lang-go="`healthcare.Hl7StoreIamPolicy`" pulumi-lang-python="`healthcare.Hl7StoreIamPolicy`" pulumi-lang-yaml="`gcp.healthcare.Hl7StoreIamPolicy`" pulumi-lang-java="`gcp.healthcare.Hl7StoreIamPolicy`">`gcp.healthcare.Hl7StoreIamPolicy`</span>: Authoritative. Sets the IAM policy for the HL7v2 store and replaces any existing policy already attached.
/// * <span pulumi-lang-nodejs="`gcp.healthcare.Hl7StoreIamBinding`" pulumi-lang-dotnet="`gcp.healthcare.Hl7StoreIamBinding`" pulumi-lang-go="`healthcare.Hl7StoreIamBinding`" pulumi-lang-python="`healthcare.Hl7StoreIamBinding`" pulumi-lang-yaml="`gcp.healthcare.Hl7StoreIamBinding`" pulumi-lang-java="`gcp.healthcare.Hl7StoreIamBinding`">`gcp.healthcare.Hl7StoreIamBinding`</span>: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the HL7v2 store are preserved.
/// * <span pulumi-lang-nodejs="`gcp.healthcare.Hl7StoreIamMember`" pulumi-lang-dotnet="`gcp.healthcare.Hl7StoreIamMember`" pulumi-lang-go="`healthcare.Hl7StoreIamMember`" pulumi-lang-python="`healthcare.Hl7StoreIamMember`" pulumi-lang-yaml="`gcp.healthcare.Hl7StoreIamMember`" pulumi-lang-java="`gcp.healthcare.Hl7StoreIamMember`">`gcp.healthcare.Hl7StoreIamMember`</span>: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the HL7v2 store are preserved.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.healthcare.Hl7StoreIamPolicy`" pulumi-lang-dotnet="`gcp.healthcare.Hl7StoreIamPolicy`" pulumi-lang-go="`healthcare.Hl7StoreIamPolicy`" pulumi-lang-python="`healthcare.Hl7StoreIamPolicy`" pulumi-lang-yaml="`gcp.healthcare.Hl7StoreIamPolicy`" pulumi-lang-java="`gcp.healthcare.Hl7StoreIamPolicy`">`gcp.healthcare.Hl7StoreIamPolicy`</span> **cannot** be used in conjunction with <span pulumi-lang-nodejs="`gcp.healthcare.Hl7StoreIamBinding`" pulumi-lang-dotnet="`gcp.healthcare.Hl7StoreIamBinding`" pulumi-lang-go="`healthcare.Hl7StoreIamBinding`" pulumi-lang-python="`healthcare.Hl7StoreIamBinding`" pulumi-lang-yaml="`gcp.healthcare.Hl7StoreIamBinding`" pulumi-lang-java="`gcp.healthcare.Hl7StoreIamBinding`">`gcp.healthcare.Hl7StoreIamBinding`</span> and <span pulumi-lang-nodejs="`gcp.healthcare.Hl7StoreIamMember`" pulumi-lang-dotnet="`gcp.healthcare.Hl7StoreIamMember`" pulumi-lang-go="`healthcare.Hl7StoreIamMember`" pulumi-lang-python="`healthcare.Hl7StoreIamMember`" pulumi-lang-yaml="`gcp.healthcare.Hl7StoreIamMember`" pulumi-lang-java="`gcp.healthcare.Hl7StoreIamMember`">`gcp.healthcare.Hl7StoreIamMember`</span> or they will fight over what your policy should be.
///
/// > **Note:** <span pulumi-lang-nodejs="`gcp.healthcare.Hl7StoreIamBinding`" pulumi-lang-dotnet="`gcp.healthcare.Hl7StoreIamBinding`" pulumi-lang-go="`healthcare.Hl7StoreIamBinding`" pulumi-lang-python="`healthcare.Hl7StoreIamBinding`" pulumi-lang-yaml="`gcp.healthcare.Hl7StoreIamBinding`" pulumi-lang-java="`gcp.healthcare.Hl7StoreIamBinding`">`gcp.healthcare.Hl7StoreIamBinding`</span> resources **can be** used in conjunction with <span pulumi-lang-nodejs="`gcp.healthcare.Hl7StoreIamMember`" pulumi-lang-dotnet="`gcp.healthcare.Hl7StoreIamMember`" pulumi-lang-go="`healthcare.Hl7StoreIamMember`" pulumi-lang-python="`healthcare.Hl7StoreIamMember`" pulumi-lang-yaml="`gcp.healthcare.Hl7StoreIamMember`" pulumi-lang-java="`gcp.healthcare.Hl7StoreIamMember`">`gcp.healthcare.Hl7StoreIamMember`</span> resources **only if** they do not grant privilege to the same role.
///
/// ##<span pulumi-lang-nodejs=" gcp.healthcare.Hl7StoreIamPolicy
/// " pulumi-lang-dotnet=" gcp.healthcare.Hl7StoreIamPolicy
/// " pulumi-lang-go=" healthcare.Hl7StoreIamPolicy
/// " pulumi-lang-python=" healthcare.Hl7StoreIamPolicy
/// " pulumi-lang-yaml=" gcp.healthcare.Hl7StoreIamPolicy
/// " pulumi-lang-java=" gcp.healthcare.Hl7StoreIamPolicy
/// "> gcp.healthcare.Hl7StoreIamPolicy
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin = gcp.organizations.getIAMPolicy({
/// bindings: [{
/// role: "roles/editor",
/// members: ["user:jane@example.com"],
/// }],
/// });
/// const hl7V2Store = new gcp.healthcare.Hl7StoreIamPolicy("hl7_v2_store", {
/// hl7V2StoreId: "your-hl7-v2-store-id",
/// policyData: admin.then(admin => admin.policyData),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin = gcp.organizations.get_iam_policy(bindings=[{
/// "role": "roles/editor",
/// "members": ["user:jane@example.com"],
/// }])
/// hl7_v2_store = gcp.healthcare.Hl7StoreIamPolicy("hl7_v2_store",
/// hl7_v2_store_id="your-hl7-v2-store-id",
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
/// Role = "roles/editor",
/// Members = new[]
/// {
/// "user:jane@example.com",
/// },
/// },
/// },
/// });
///
/// var hl7V2Store = new Gcp.Healthcare.Hl7StoreIamPolicy("hl7_v2_store", new()
/// {
/// Hl7V2StoreId = "your-hl7-v2-store-id",
/// PolicyData = admin.Apply(getIAMPolicyResult => getIAMPolicyResult.PolicyData),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/healthcare"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// admin, err := organizations.LookupIAMPolicy(ctx, &organizations.LookupIAMPolicyArgs{
/// Bindings: []organizations.GetIAMPolicyBinding{
/// {
/// Role: "roles/editor",
/// Members: []string{
/// "user:jane@example.com",
/// },
/// },
/// },
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = healthcare.NewHl7StoreIamPolicy(ctx, "hl7_v2_store", &healthcare.Hl7StoreIamPolicyArgs{
/// Hl7V2StoreId: pulumi.String("your-hl7-v2-store-id"),
/// PolicyData:   pulumi.String(admin.PolicyData),
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
/// import com.pulumi.gcp.healthcare.Hl7StoreIamPolicy;
/// import com.pulumi.gcp.healthcare.Hl7StoreIamPolicyArgs;
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
/// .role("roles/editor")
/// .members("user:jane@example.com")
/// .build())
/// .build());
///
/// var hl7V2Store = new Hl7StoreIamPolicy("hl7V2Store", Hl7StoreIamPolicyArgs.builder()
/// .hl7V2StoreId("your-hl7-v2-store-id")
/// .policyData(admin.policyData())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// hl7V2Store:
/// type: gcp:healthcare:Hl7StoreIamPolicy
/// name: hl7_v2_store
/// properties:
/// hl7V2StoreId: your-hl7-v2-store-id
/// policyData: ${admin.policyData}
/// variables:
/// admin:
/// fn::invoke:
/// function: gcp:organizations:getIAMPolicy
/// arguments:
/// bindings:
/// - role: roles/editor
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.healthcare.Hl7StoreIamBinding
/// " pulumi-lang-dotnet=" gcp.healthcare.Hl7StoreIamBinding
/// " pulumi-lang-go=" healthcare.Hl7StoreIamBinding
/// " pulumi-lang-python=" healthcare.Hl7StoreIamBinding
/// " pulumi-lang-yaml=" gcp.healthcare.Hl7StoreIamBinding
/// " pulumi-lang-java=" gcp.healthcare.Hl7StoreIamBinding
/// "> gcp.healthcare.Hl7StoreIamBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const hl7V2Store = new gcp.healthcare.Hl7StoreIamBinding("hl7_v2_store", {
/// hl7V2StoreId: "your-hl7-v2-store-id",
/// role: "roles/editor",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// hl7_v2_store = gcp.healthcare.Hl7StoreIamBinding("hl7_v2_store",
/// hl7_v2_store_id="your-hl7-v2-store-id",
/// role="roles/editor",
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
/// var hl7V2Store = new Gcp.Healthcare.Hl7StoreIamBinding("hl7_v2_store", new()
/// {
/// Hl7V2StoreId = "your-hl7-v2-store-id",
/// Role = "roles/editor",
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/healthcare"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := healthcare.NewHl7StoreIamBinding(ctx, "hl7_v2_store", &healthcare.Hl7StoreIamBindingArgs{
/// Hl7V2StoreId: pulumi.String("your-hl7-v2-store-id"),
/// Role:         pulumi.String("roles/editor"),
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
/// import com.pulumi.gcp.healthcare.Hl7StoreIamBinding;
/// import com.pulumi.gcp.healthcare.Hl7StoreIamBindingArgs;
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
/// var hl7V2Store = new Hl7StoreIamBinding("hl7V2Store", Hl7StoreIamBindingArgs.builder()
/// .hl7V2StoreId("your-hl7-v2-store-id")
/// .role("roles/editor")
/// .members("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// hl7V2Store:
/// type: gcp:healthcare:Hl7StoreIamBinding
/// name: hl7_v2_store
/// properties:
/// hl7V2StoreId: your-hl7-v2-store-id
/// role: roles/editor
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.healthcare.Hl7StoreIamMember
/// " pulumi-lang-dotnet=" gcp.healthcare.Hl7StoreIamMember
/// " pulumi-lang-go=" healthcare.Hl7StoreIamMember
/// " pulumi-lang-python=" healthcare.Hl7StoreIamMember
/// " pulumi-lang-yaml=" gcp.healthcare.Hl7StoreIamMember
/// " pulumi-lang-java=" gcp.healthcare.Hl7StoreIamMember
/// "> gcp.healthcare.Hl7StoreIamMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const hl7V2Store = new gcp.healthcare.Hl7StoreIamMember("hl7_v2_store", {
/// hl7V2StoreId: "your-hl7-v2-store-id",
/// role: "roles/editor",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// hl7_v2_store = gcp.healthcare.Hl7StoreIamMember("hl7_v2_store",
/// hl7_v2_store_id="your-hl7-v2-store-id",
/// role="roles/editor",
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
/// var hl7V2Store = new Gcp.Healthcare.Hl7StoreIamMember("hl7_v2_store", new()
/// {
/// Hl7V2StoreId = "your-hl7-v2-store-id",
/// Role = "roles/editor",
/// Member = "user:jane@example.com",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/healthcare"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := healthcare.NewHl7StoreIamMember(ctx, "hl7_v2_store", &healthcare.Hl7StoreIamMemberArgs{
/// Hl7V2StoreId: pulumi.String("your-hl7-v2-store-id"),
/// Role:         pulumi.String("roles/editor"),
/// Member:       pulumi.String("user:jane@example.com"),
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
/// import com.pulumi.gcp.healthcare.Hl7StoreIamMember;
/// import com.pulumi.gcp.healthcare.Hl7StoreIamMemberArgs;
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
/// var hl7V2Store = new Hl7StoreIamMember("hl7V2Store", Hl7StoreIamMemberArgs.builder()
/// .hl7V2StoreId("your-hl7-v2-store-id")
/// .role("roles/editor")
/// .member("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// hl7V2Store:
/// type: gcp:healthcare:Hl7StoreIamMember
/// name: hl7_v2_store
/// properties:
/// hl7V2StoreId: your-hl7-v2-store-id
/// role: roles/editor
/// member: user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.healthcare.Hl7StoreIamBinding
/// " pulumi-lang-dotnet=" gcp.healthcare.Hl7StoreIamBinding
/// " pulumi-lang-go=" healthcare.Hl7StoreIamBinding
/// " pulumi-lang-python=" healthcare.Hl7StoreIamBinding
/// " pulumi-lang-yaml=" gcp.healthcare.Hl7StoreIamBinding
/// " pulumi-lang-java=" gcp.healthcare.Hl7StoreIamBinding
/// "> gcp.healthcare.Hl7StoreIamBinding
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const hl7V2Store = new gcp.healthcare.Hl7StoreIamBinding("hl7_v2_store", {
/// hl7V2StoreId: "your-hl7-v2-store-id",
/// role: "roles/editor",
/// members: ["user:jane@example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// hl7_v2_store = gcp.healthcare.Hl7StoreIamBinding("hl7_v2_store",
/// hl7_v2_store_id="your-hl7-v2-store-id",
/// role="roles/editor",
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
/// var hl7V2Store = new Gcp.Healthcare.Hl7StoreIamBinding("hl7_v2_store", new()
/// {
/// Hl7V2StoreId = "your-hl7-v2-store-id",
/// Role = "roles/editor",
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/healthcare"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := healthcare.NewHl7StoreIamBinding(ctx, "hl7_v2_store", &healthcare.Hl7StoreIamBindingArgs{
/// Hl7V2StoreId: pulumi.String("your-hl7-v2-store-id"),
/// Role:         pulumi.String("roles/editor"),
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
/// import com.pulumi.gcp.healthcare.Hl7StoreIamBinding;
/// import com.pulumi.gcp.healthcare.Hl7StoreIamBindingArgs;
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
/// var hl7V2Store = new Hl7StoreIamBinding("hl7V2Store", Hl7StoreIamBindingArgs.builder()
/// .hl7V2StoreId("your-hl7-v2-store-id")
/// .role("roles/editor")
/// .members("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// hl7V2Store:
/// type: gcp:healthcare:Hl7StoreIamBinding
/// name: hl7_v2_store
/// properties:
/// hl7V2StoreId: your-hl7-v2-store-id
/// role: roles/editor
/// members:
/// - user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ##<span pulumi-lang-nodejs=" gcp.healthcare.Hl7StoreIamMember
/// " pulumi-lang-dotnet=" gcp.healthcare.Hl7StoreIamMember
/// " pulumi-lang-go=" healthcare.Hl7StoreIamMember
/// " pulumi-lang-python=" healthcare.Hl7StoreIamMember
/// " pulumi-lang-yaml=" gcp.healthcare.Hl7StoreIamMember
/// " pulumi-lang-java=" gcp.healthcare.Hl7StoreIamMember
/// "> gcp.healthcare.Hl7StoreIamMember
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const hl7V2Store = new gcp.healthcare.Hl7StoreIamMember("hl7_v2_store", {
/// hl7V2StoreId: "your-hl7-v2-store-id",
/// role: "roles/editor",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// hl7_v2_store = gcp.healthcare.Hl7StoreIamMember("hl7_v2_store",
/// hl7_v2_store_id="your-hl7-v2-store-id",
/// role="roles/editor",
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
/// var hl7V2Store = new Gcp.Healthcare.Hl7StoreIamMember("hl7_v2_store", new()
/// {
/// Hl7V2StoreId = "your-hl7-v2-store-id",
/// Role = "roles/editor",
/// Member = "user:jane@example.com",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/healthcare"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := healthcare.NewHl7StoreIamMember(ctx, "hl7_v2_store", &healthcare.Hl7StoreIamMemberArgs{
/// Hl7V2StoreId: pulumi.String("your-hl7-v2-store-id"),
/// Role:         pulumi.String("roles/editor"),
/// Member:       pulumi.String("user:jane@example.com"),
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
/// import com.pulumi.gcp.healthcare.Hl7StoreIamMember;
/// import com.pulumi.gcp.healthcare.Hl7StoreIamMemberArgs;
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
/// var hl7V2Store = new Hl7StoreIamMember("hl7V2Store", Hl7StoreIamMemberArgs.builder()
/// .hl7V2StoreId("your-hl7-v2-store-id")
/// .role("roles/editor")
/// .member("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// hl7V2Store:
/// type: gcp:healthcare:Hl7StoreIamMember
/// name: hl7_v2_store
/// properties:
/// hl7V2StoreId: your-hl7-v2-store-id
/// role: roles/editor
/// member: user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// ### Importing IAM policies
///
/// IAM policy imports use the identifier of the Google Cloud Healthcare HL7v2 store resource. For example:
///
/// * `"{{project_id}}/{{location}}/{{dataset}}/{{hl7_v2_store}}"`
///
/// An `import` block (Terraform v1.5.0 and later) can be used to import IAM policies:
///
/// tf
///
/// import {
///
/// id = "{{project_id}}/{{location}}/{{dataset}}/{{hl7_v2_store}}"
///
/// to = google_healthcare_hl7_v2_store_iam_policy.default
///
/// }
///
/// The `pulumi import` command can also be used:
///
/// ```sh
/// $ pulumi import gcp:healthcare/hl7StoreIamPolicy:Hl7StoreIamPolicy default {{project_id}}/{{location}}/{{dataset}}/{{hl7_v2_store}}
/// ```
class Hl7StoreIamPolicy extends CustomResource {
  /// (Computed) The etag of the HL7v2 store's IAM policy.
  late final Output<String> etag;

  /// The HL7v2 store ID, in the form
  /// `{project_id}/{location_name}/{dataset_name}/{hl7_v2_store_name}` or
  /// `{location_name}/{dataset_name}/{hl7_v2_store_name}`. In the second form, the provider's
  /// project setting will be used as a fallback.
  late final Output<String> hl7V2StoreId;

  /// The policy data generated by
  /// a <span pulumi-lang-nodejs="`gcp.organizations.getIAMPolicy`" pulumi-lang-dotnet="`gcp.organizations.getIAMPolicy`" pulumi-lang-go="`organizations.getIAMPolicy`" pulumi-lang-python="`organizations_get_iam_policy`" pulumi-lang-yaml="`gcp.organizations.getIAMPolicy`" pulumi-lang-java="`gcp.organizations.getIAMPolicy`">`gcp.organizations.getIAMPolicy`</span> data source.
  late final Output<String> policyData;

  Hl7StoreIamPolicy(
    String name, {
    Hl7StoreIamPolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:healthcare/hl7StoreIamPolicy:Hl7StoreIamPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.etag = registerOutput<String>('etag');
    this.hl7V2StoreId = registerOutput<String>('hl7V2StoreId');
    this.policyData = registerOutput<String>('policyData');
  }
}
