import 'package:pulumi/pulumi.dart';
import 'registry_args.dart';

/// > **Warning**: Container Registry is deprecated. Effective March 18, 2025, Container Registry is shut down and writing images to Container Registry is unavailable. Resource will be removed in future major release.
///
/// Ensures that the Google Cloud Storage bucket that backs Google Container Registry exists. Creating this resource will create the backing bucket if it does not exist, or do nothing if the bucket already exists. Destroying this resource does *NOT* destroy the backing bucket. For more information see [the official documentation](https://cloud.google.com/container-registry/docs/overview)
///
/// This resource can be used to ensure that the GCS bucket exists prior to assigning permissions. For more information see the [access control page](https://cloud.google.com/container-registry/docs/access-control) for GCR.
///
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const registry = new gcp.container.Registry("registry", {
/// project: "my-project",
/// location: "EU",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// registry = gcp.container.Registry("registry",
/// project="my-project",
/// location="EU")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var registry = new Gcp.Container.Registry("registry", new()
/// {
/// Project = "my-project",
/// Location = "EU",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/container"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := container.NewRegistry(ctx, "registry", &container.RegistryArgs{
/// Project:  pulumi.String("my-project"),
/// Location: pulumi.String("EU"),
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
/// import com.pulumi.gcp.container.Registry;
/// import com.pulumi.gcp.container.RegistryArgs;
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
/// var registry = new Registry("registry", RegistryArgs.builder()
/// .project("my-project")
/// .location("EU")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// registry:
/// type: gcp:container:Registry
/// properties:
/// project: my-project
/// location: EU
/// ```
/// <!--End PulumiCodeChooser -->
///
/// The <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span> field of the <span pulumi-lang-nodejs="`gcp.container.Registry`" pulumi-lang-dotnet="`gcp.container.Registry`" pulumi-lang-go="`container.Registry`" pulumi-lang-python="`container.Registry`" pulumi-lang-yaml="`gcp.container.Registry`" pulumi-lang-java="`gcp.container.Registry`">`gcp.container.Registry`</span> is the identifier of the storage bucket that backs GCR and can be used to assign permissions to the bucket.
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const registry = new gcp.container.Registry("registry", {
/// project: "my-project",
/// location: "EU",
/// });
/// const viewer = new gcp.storage.BucketIAMMember("viewer", {
/// bucket: registry.id,
/// role: "roles/storage.objectViewer",
/// member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// registry = gcp.container.Registry("registry",
/// project="my-project",
/// location="EU")
/// viewer = gcp.storage.BucketIAMMember("viewer",
/// bucket=registry.id,
/// role="roles/storage.objectViewer",
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
/// var registry = new Gcp.Container.Registry("registry", new()
/// {
/// Project = "my-project",
/// Location = "EU",
/// });
///
/// var viewer = new Gcp.Storage.BucketIAMMember("viewer", new()
/// {
/// Bucket = registry.Id,
/// Role = "roles/storage.objectViewer",
/// Member = "user:jane@example.com",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/container"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// registry, err := container.NewRegistry(ctx, "registry", &container.RegistryArgs{
/// Project:  pulumi.String("my-project"),
/// Location: pulumi.String("EU"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = storage.NewBucketIAMMember(ctx, "viewer", &storage.BucketIAMMemberArgs{
/// Bucket: registry.ID(),
/// Role:   pulumi.String("roles/storage.objectViewer"),
/// Member: pulumi.String("user:jane@example.com"),
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
/// import com.pulumi.gcp.container.Registry;
/// import com.pulumi.gcp.container.RegistryArgs;
/// import com.pulumi.gcp.storage.BucketIAMMember;
/// import com.pulumi.gcp.storage.BucketIAMMemberArgs;
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
/// var registry = new Registry("registry", RegistryArgs.builder()
/// .project("my-project")
/// .location("EU")
/// .build());
///
/// var viewer = new BucketIAMMember("viewer", BucketIAMMemberArgs.builder()
/// .bucket(registry.id())
/// .role("roles/storage.objectViewer")
/// .member("user:jane@example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// registry:
/// type: gcp:container:Registry
/// properties:
/// project: my-project
/// location: EU
/// viewer:
/// type: gcp:storage:BucketIAMMember
/// properties:
/// bucket: ${registry.id}
/// role: roles/storage.objectViewer
/// member: user:jane@example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// This resource does not support import.
class Registry extends CustomResource {
  /// The URI of the created resource.
  late final Output<String> bucketSelfLink;

  /// The location of the registry. One of `ASIA`, `EU`, `US` or not specified. See [the official documentation](https://cloud.google.com/container-registry/docs/pushing-and-pulling#pushing_an_image_to_a_registry) for more information on registry locations.
  late final Output<String?> location;

  /// The ID of the project in which the resource belongs. If it is not provided, the provider project is used.
  late final Output<String> project;

  Registry(
    String name, {
    RegistryArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:container/registry:Registry',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.bucketSelfLink = Output.createUnknown<String>();
    this.location = Output.createUnknown<String?>();
    this.project = Output.createUnknown<String>();
  }
}
