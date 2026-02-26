import 'package:pulumi/pulumi.dart';
import 'get_orderable_db_instance_args3.dart';
import 'get_orderable_db_instance_result3.dart';

/// Information about RDS orderable DB instances and valid parameter combinations.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = aws.rds.getOrderableDbInstance({
/// engine: "mysql",
/// engineVersion: "5.7.22",
/// licenseModel: "general-public-license",
/// storageType: "standard",
/// preferredInstanceClasses: [
/// "db.r6.xlarge",
/// "db.m4.large",
/// "db.t3.small",
/// ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.rds.get_orderable_db_instance(engine="mysql",
/// engine_version="5.7.22",
/// license_model="general-public-license",
/// storage_type="standard",
/// preferred_instance_classes=[
/// "db.r6.xlarge",
/// "db.m4.large",
/// "db.t3.small",
/// ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var test = Aws.Rds.GetOrderableDbInstance.Invoke(new()
/// {
/// Engine = "mysql",
/// EngineVersion = "5.7.22",
/// LicenseModel = "general-public-license",
/// StorageType = "standard",
/// PreferredInstanceClasses = new[]
/// {
/// "db.r6.xlarge",
/// "db.m4.large",
/// "db.t3.small",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/rds"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := rds.GetOrderableDbInstance(ctx, &rds.GetOrderableDbInstanceArgs{
/// Engine:        "mysql",
/// EngineVersion: pulumi.StringRef("5.7.22"),
/// LicenseModel:  pulumi.StringRef("general-public-license"),
/// StorageType:   pulumi.StringRef("standard"),
/// PreferredInstanceClasses: []string{
/// "db.r6.xlarge",
/// "db.m4.large",
/// "db.t3.small",
/// },
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
/// import com.pulumi.aws.rds.RdsFunctions;
/// import com.pulumi.aws.rds.inputs.GetOrderableDbInstanceArgs;
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
/// final var test = RdsFunctions.getOrderableDbInstance(GetOrderableDbInstanceArgs.builder()
/// .engine("mysql")
/// .engineVersion("5.7.22")
/// .licenseModel("general-public-license")
/// .storageType("standard")
/// .preferredInstanceClasses(
/// "db.r6.xlarge",
/// "db.m4.large",
/// "db.t3.small")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// test:
/// fn::invoke:
/// function: aws:rds:getOrderableDbInstance
/// arguments:
/// engine: mysql
/// engineVersion: 5.7.22
/// licenseModel: general-public-license
/// storageType: standard
/// preferredInstanceClasses:
/// - db.r6.xlarge
/// - db.m4.large
/// - db.t3.small
/// ```
/// <!--End PulumiCodeChooser -->
///
/// Valid parameter combinations can also be found with <span pulumi-lang-nodejs="`preferredEngineVersions`" pulumi-lang-dotnet="`PreferredEngineVersions`" pulumi-lang-go="`preferredEngineVersions`" pulumi-lang-python="`preferred_engine_versions`" pulumi-lang-yaml="`preferredEngineVersions`" pulumi-lang-java="`preferredEngineVersions`">`preferred_engine_versions`</span> and/or <span pulumi-lang-nodejs="`preferredInstanceClasses`" pulumi-lang-dotnet="`PreferredInstanceClasses`" pulumi-lang-go="`preferredInstanceClasses`" pulumi-lang-python="`preferred_instance_classes`" pulumi-lang-yaml="`preferredInstanceClasses`" pulumi-lang-java="`preferredInstanceClasses`">`preferred_instance_classes`</span>.
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = aws.rds.getOrderableDbInstance({
/// engine: "mysql",
/// licenseModel: "general-public-license",
/// preferredEngineVersions: [
/// "5.6.35",
/// "5.6.41",
/// "5.6.44",
/// ],
/// preferredInstanceClasses: [
/// "db.t2.small",
/// "db.t3.medium",
/// "db.t3.large",
/// ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.rds.get_orderable_db_instance(engine="mysql",
/// license_model="general-public-license",
/// preferred_engine_versions=[
/// "5.6.35",
/// "5.6.41",
/// "5.6.44",
/// ],
/// preferred_instance_classes=[
/// "db.t2.small",
/// "db.t3.medium",
/// "db.t3.large",
/// ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var test = Aws.Rds.GetOrderableDbInstance.Invoke(new()
/// {
/// Engine = "mysql",
/// LicenseModel = "general-public-license",
/// PreferredEngineVersions = new[]
/// {
/// "5.6.35",
/// "5.6.41",
/// "5.6.44",
/// },
/// PreferredInstanceClasses = new[]
/// {
/// "db.t2.small",
/// "db.t3.medium",
/// "db.t3.large",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/rds"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := rds.GetOrderableDbInstance(ctx, &rds.GetOrderableDbInstanceArgs{
/// Engine:       "mysql",
/// LicenseModel: pulumi.StringRef("general-public-license"),
/// PreferredEngineVersions: []string{
/// "5.6.35",
/// "5.6.41",
/// "5.6.44",
/// },
/// PreferredInstanceClasses: []string{
/// "db.t2.small",
/// "db.t3.medium",
/// "db.t3.large",
/// },
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
/// import com.pulumi.aws.rds.RdsFunctions;
/// import com.pulumi.aws.rds.inputs.GetOrderableDbInstanceArgs;
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
/// final var test = RdsFunctions.getOrderableDbInstance(GetOrderableDbInstanceArgs.builder()
/// .engine("mysql")
/// .licenseModel("general-public-license")
/// .preferredEngineVersions(
/// "5.6.35",
/// "5.6.41",
/// "5.6.44")
/// .preferredInstanceClasses(
/// "db.t2.small",
/// "db.t3.medium",
/// "db.t3.large")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// test:
/// fn::invoke:
/// function: aws:rds:getOrderableDbInstance
/// arguments:
/// engine: mysql
/// licenseModel: general-public-license
/// preferredEngineVersions:
/// - 5.6.35
/// - 5.6.41
/// - 5.6.44
/// preferredInstanceClasses:
/// - db.t2.small
/// - db.t3.medium
/// - db.t3.large
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetOrderableDbInstanceResult3> getOrderableDbInstance3(
  GetOrderableDbInstanceArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:rds/getOrderableDbInstance:getOrderableDbInstance',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetOrderableDbInstanceResult3.fromMap(result);
}
