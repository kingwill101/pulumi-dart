import 'package:pulumi/pulumi.dart';
import '../asset_type_forms_input/asset_type_forms_input.dart';
import '../asset_type_timeouts/asset_type_timeouts.dart';
import 'asset_type_args.dart';

/// Resource for managing an AWS DataZone Asset Type.
///
/// ## Example Usage
///
/// ### Basic Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.datazone.AssetType("test", {
/// description: "example",
/// domainIdentifier: testAwsDatazoneDomain.id,
/// name: "example",
/// owningProjectIdentifier: testAwsDatazoneProject.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.datazone.AssetType("test",
/// description="example",
/// domain_identifier=test_aws_datazone_domain["id"],
/// name="example",
/// owning_project_identifier=test_aws_datazone_project["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var test = new Aws.DataZone.AssetType("test", new()
/// {
/// Description = "example",
/// DomainIdentifier = testAwsDatazoneDomain.Id,
/// Name = "example",
/// OwningProjectIdentifier = testAwsDatazoneProject.Id,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/datazone"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := datazone.NewAssetType(ctx, "test", &datazone.AssetTypeArgs{
/// Description:             pulumi.String("example"),
/// DomainIdentifier:        pulumi.Any(testAwsDatazoneDomain.Id),
/// Name:                    pulumi.String("example"),
/// OwningProjectIdentifier: pulumi.Any(testAwsDatazoneProject.Id),
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
/// import com.pulumi.aws.datazone.AssetType;
/// import com.pulumi.aws.datazone.AssetTypeArgs;
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
/// var test = new AssetType("test", AssetTypeArgs.builder()
/// .description("example")
/// .domainIdentifier(testAwsDatazoneDomain.id())
/// .name("example")
/// .owningProjectIdentifier(testAwsDatazoneProject.id())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// test:
/// type: aws:datazone:AssetType
/// properties:
/// description: example
/// domainIdentifier: ${testAwsDatazoneDomain.id}
/// name: example
/// owningProjectIdentifier: ${testAwsDatazoneProject.id}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import DataZone Asset Type using the `domain_identifier,name`. For example:
///
/// ```sh
/// $ pulumi import aws:datazone/assetType:AssetType example domain-id-12345678,example
/// ```
class AssetType extends CustomResource {
  /// The timestamp when the custom asset type was created.
  late final Output<String> createdAt;

  /// The user who created the custom asset type.
  late final Output<String> createdBy;

  /// The description of the custom asset type.
  late final Output<String?> description;

  /// The unique identifier of the Amazon DataZone domain where the custom asset type is being created.
  late final Output<String> domainIdentifier;

  /// The metadata forms that are to be attached to the custom asset type.
  late final Output<List<AssetTypeFormsInput>?> formsInputs;

  /// The name of the custom asset type.
  late final Output<String> name;

  /// The unique identifier of the Amazon DataZone project that owns the custom asset type.
  ///
  /// The following arguments are optional:
  late final Output<String> owningProjectIdentifier;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The revision of the asset type.
  late final Output<String> revision;
  late final Output<AssetTypeTimeouts?> timeouts;

  AssetType(
    String name, {
    AssetTypeArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:datazone/assetType:AssetType',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createdAt = Output.createUnknown<String>();
    this.createdBy = Output.createUnknown<String>();
    this.description = Output.createUnknown<String?>();
    this.domainIdentifier = Output.createUnknown<String>();
    this.formsInputs = Output.createUnknown<List<AssetTypeFormsInput>?>();
    this.name = Output.createUnknown<String>();
    this.owningProjectIdentifier = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.revision = Output.createUnknown<String>();
    this.timeouts = Output.createUnknown<AssetTypeTimeouts?>();
  }
}
