import 'package:pulumi/pulumi.dart';
import 'get_roles_args.dart';
import 'get_roles_result.dart';

/// Use this data source to get the ARNs and Names of IAM Roles.
///
/// ## Example Usage
///
/// ### All roles in an account
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const roles = aws.iam.getRoles({});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// roles = aws.iam.get_roles()
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var roles = Aws.Iam.GetRoles.Invoke();
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := iam.GetRoles(ctx, &iam.GetRolesArgs{}, nil)
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
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetRolesArgs;
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
/// final var roles = IamFunctions.getRoles(GetRolesArgs.builder()
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// roles:
/// fn::invoke:
/// function: aws:iam:getRoles
/// arguments: {}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Roles filtered by name regex
///
/// Roles whose role-name contains <span pulumi-lang-nodejs="`project`" pulumi-lang-dotnet="`Project`" pulumi-lang-go="`project`" pulumi-lang-python="`project`" pulumi-lang-yaml="`project`" pulumi-lang-java="`project`">`project`</span>
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const roles = aws.iam.getRoles({
/// nameRegex: ".*project.*",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// roles = aws.iam.get_roles(name_regex=".*project.*")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var roles = Aws.Iam.GetRoles.Invoke(new()
/// {
/// NameRegex = ".*project.*",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := iam.GetRoles(ctx, &iam.GetRolesArgs{
/// NameRegex: pulumi.StringRef(".*project.*"),
/// }, nil)
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
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetRolesArgs;
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
/// final var roles = IamFunctions.getRoles(GetRolesArgs.builder()
/// .nameRegex(".*project.*")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// roles:
/// fn::invoke:
/// function: aws:iam:getRoles
/// arguments:
/// nameRegex: .*project.*
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Roles filtered by path prefix
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const roles = aws.iam.getRoles({
/// pathPrefix: "/custom-path",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// roles = aws.iam.get_roles(path_prefix="/custom-path")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var roles = Aws.Iam.GetRoles.Invoke(new()
/// {
/// PathPrefix = "/custom-path",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := iam.GetRoles(ctx, &iam.GetRolesArgs{
/// PathPrefix: pulumi.StringRef("/custom-path"),
/// }, nil)
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
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetRolesArgs;
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
/// final var roles = IamFunctions.getRoles(GetRolesArgs.builder()
/// .pathPrefix("/custom-path")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// roles:
/// fn::invoke:
/// function: aws:iam:getRoles
/// arguments:
/// pathPrefix: /custom-path
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Roles provisioned by AWS SSO
///
/// Roles in the account filtered by path prefix
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const roles = aws.iam.getRoles({
/// pathPrefix: "/aws-reserved/sso.amazonaws.com/",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// roles = aws.iam.get_roles(path_prefix="/aws-reserved/sso.amazonaws.com/")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var roles = Aws.Iam.GetRoles.Invoke(new()
/// {
/// PathPrefix = "/aws-reserved/sso.amazonaws.com/",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := iam.GetRoles(ctx, &iam.GetRolesArgs{
/// PathPrefix: pulumi.StringRef("/aws-reserved/sso.amazonaws.com/"),
/// }, nil)
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
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetRolesArgs;
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
/// final var roles = IamFunctions.getRoles(GetRolesArgs.builder()
/// .pathPrefix("/aws-reserved/sso.amazonaws.com/")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// roles:
/// fn::invoke:
/// function: aws:iam:getRoles
/// arguments:
/// pathPrefix: /aws-reserved/sso.amazonaws.com/
/// ```
/// <!--End PulumiCodeChooser -->
///
/// Specific role in the account filtered by name regex and path prefix
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const roles = aws.iam.getRoles({
/// nameRegex: "AWSReservedSSO_permission_set_name_.*",
/// pathPrefix: "/aws-reserved/sso.amazonaws.com/",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// roles = aws.iam.get_roles(name_regex="AWSReservedSSO_permission_set_name_.*",
/// path_prefix="/aws-reserved/sso.amazonaws.com/")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var roles = Aws.Iam.GetRoles.Invoke(new()
/// {
/// NameRegex = "AWSReservedSSO_permission_set_name_.*",
/// PathPrefix = "/aws-reserved/sso.amazonaws.com/",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := iam.GetRoles(ctx, &iam.GetRolesArgs{
/// NameRegex:  pulumi.StringRef("AWSReservedSSO_permission_set_name_.*"),
/// PathPrefix: pulumi.StringRef("/aws-reserved/sso.amazonaws.com/"),
/// }, nil)
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
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetRolesArgs;
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
/// final var roles = IamFunctions.getRoles(GetRolesArgs.builder()
/// .nameRegex("AWSReservedSSO_permission_set_name_.*")
/// .pathPrefix("/aws-reserved/sso.amazonaws.com/")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// roles:
/// fn::invoke:
/// function: aws:iam:getRoles
/// arguments:
/// nameRegex: AWSReservedSSO_permission_set_name_.*
/// pathPrefix: /aws-reserved/sso.amazonaws.com/
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetRolesResult> getRoles(
  GetRolesArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:iam/getRoles:getRoles',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRolesResult.fromMap(result);
}
