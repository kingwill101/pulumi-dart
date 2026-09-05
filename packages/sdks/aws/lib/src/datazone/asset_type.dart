import 'package:pulumi/pulumi.dart' as pulumi;
import 'asset_type_args.dart';
import 'asset_type_forms_input.dart';
import 'asset_type_state.dart';
import 'asset_type_timeouts.dart';

/// Resource for managing an AWS DataZone Asset Type.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.datazone.AssetType("test", {
///     description: "example",
///     domainIdentifier: testAwsDatazoneDomain.id,
///     name: "example",
///     owningProjectIdentifier: testAwsDatazoneProject.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.datazone.AssetType("test",
///     description="example",
///     domain_identifier=test_aws_datazone_domain["id"],
///     name="example",
///     owning_project_identifier=test_aws_datazone_project["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = new Aws.DataZone.AssetType("test", new()
///     {
///         Description = "example",
///         DomainIdentifier = testAwsDatazoneDomain.Id,
///         Name = "example",
///         OwningProjectIdentifier = testAwsDatazoneProject.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/datazone"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := datazone.NewAssetType(ctx, "test", &datazone.AssetTypeArgs{
/// 			Description:             pulumi.String("example"),
/// 			DomainIdentifier:        pulumi.Any(testAwsDatazoneDomain.Id),
/// 			Name:                    pulumi.String("example"),
/// 			OwningProjectIdentifier: pulumi.Any(testAwsDatazoneProject.Id),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_datazone_assettype" "test" {
///   description               = "example"
///   domain_identifier         = testAwsDatazoneDomain.id
///   name                      = "example"
///   owning_project_identifier = testAwsDatazoneProject.id
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
/// import java.util.ArrayList;
/// import java.util.Arrays;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var test = new AssetType("test", AssetTypeArgs.builder()
///             .description("example")
///             .domainIdentifier(testAwsDatazoneDomain.id())
///             .name("example")
///             .owningProjectIdentifier(testAwsDatazoneProject.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: aws:datazone:AssetType
///     properties:
///       description: example
///       domainIdentifier: ${testAwsDatazoneDomain.id}
///       name: example
///       owningProjectIdentifier: ${testAwsDatazoneProject.id}
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `domainIdentifier` - (String) Identifier of the DataZone domain.
/// * `name` - (String) Name of the asset type.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import DataZone Asset Type using the `domain_identifier,name`. For example:
///
/// ```sh
/// $ pulumi import aws:datazone/assetType:AssetType example domain-id-12345678,example
/// ```
class AssetType extends pulumi.CustomResource {
  /// The timestamp when the custom asset type was created.
  late final pulumi.Output<String> createdAt;
  /// The user who created the custom asset type.
  late final pulumi.Output<String> createdBy;
  /// The description of the custom asset type.
  late final pulumi.Output<String?> description;
  /// The unique identifier of the Amazon DataZone domain where the custom asset type is being created.
  late final pulumi.Output<String> domainIdentifier;
  /// The metadata forms that are to be attached to the custom asset type.
  late final pulumi.Output<List<AssetTypeFormsInput>?> formsInputs;
  /// The name of the custom asset type.
  late final pulumi.Output<String> name;
  /// The unique identifier of the Amazon DataZone project that owns the custom asset type.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> owningProjectIdentifier;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The revision of the asset type.
  late final pulumi.Output<String> revision;
  late final pulumi.Output<AssetTypeTimeouts?> timeouts;

  /// Creates a new [AssetType].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AssetType]. {@macro pulumi_datazone_asset_type_asset_type_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AssetType(
    String name, {
    AssetTypeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:datazone/assetType:AssetType',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    createdAt = registerOutput<String>('createdAt');
    createdBy = registerOutput<String>('createdBy');
    description = registerOutput<String?>('description');
    domainIdentifier = registerOutput<String>('domainIdentifier');
    formsInputs = registerOutput<List<AssetTypeFormsInput>?>('formsInputs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AssetTypeFormsInput>(guardedValue, (value) => AssetTypeFormsInput.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    owningProjectIdentifier = registerOutput<String>('owningProjectIdentifier');
    region = registerOutput<String>('region');
    revision = registerOutput<String>('revision');
    timeouts = registerOutput<AssetTypeTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AssetTypeTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [AssetType] resource's state with the given [name] and [id].
  static AssetType get(
    String name,
    pulumi.Input<String> id, {
    AssetTypeState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return AssetType._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  AssetType._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:datazone/assetType:AssetType',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createdAt = registerOutput<String>('createdAt');
    createdBy = registerOutput<String>('createdBy');
    description = registerOutput<String?>('description');
    domainIdentifier = registerOutput<String>('domainIdentifier');
    formsInputs = registerOutput<List<AssetTypeFormsInput>?>('formsInputs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AssetTypeFormsInput>(guardedValue, (value) => AssetTypeFormsInput.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    owningProjectIdentifier = registerOutput<String>('owningProjectIdentifier');
    region = registerOutput<String>('region');
    revision = registerOutput<String>('revision');
    timeouts = registerOutput<AssetTypeTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AssetTypeTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [AssetType] resource.
  AssetType.reference(String urn)
    : super(
        'aws:datazone/assetType:AssetType',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    createdAt = registerOutput<String>('createdAt');
    createdBy = registerOutput<String>('createdBy');
    description = registerOutput<String?>('description');
    domainIdentifier = registerOutput<String>('domainIdentifier');
    formsInputs = registerOutput<List<AssetTypeFormsInput>?>('formsInputs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AssetTypeFormsInput>(guardedValue, (value) => AssetTypeFormsInput.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    owningProjectIdentifier = registerOutput<String>('owningProjectIdentifier');
    region = registerOutput<String>('region');
    revision = registerOutput<String>('revision');
    timeouts = registerOutput<AssetTypeTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AssetTypeTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
