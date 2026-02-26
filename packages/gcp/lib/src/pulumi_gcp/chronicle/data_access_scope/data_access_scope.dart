import 'package:pulumi/pulumi.dart';
import '../data_access_scope_allowed_data_access_label/data_access_scope_allowed_data_access_label.dart';
import '../data_access_scope_denied_data_access_label/data_access_scope_denied_data_access_label.dart';
import 'data_access_scope_args.dart';

/// A DataAccessScope is a boolean expression of data access labels used to restrict access to data for users.
///
///
/// To get more information about DataAccessScope, see:
///
/// * [API documentation](https://cloud.google.com/chronicle/docs/reference/rest/v1/projects.locations.instances.dataAccessScopes)
/// * How-to Guides
/// * [Introduction to data RBAC](https://cloud.google.com/chronicle/docs/onboard/onboard-datarbac)
///
/// ## Example Usage
///
/// ### Chronicle Dataaccessscope With Logtype
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example = new gcp.chronicle.DataAccessScope("example", {
/// location: "us",
/// instance: "00000000-0000-0000-0000-000000000000",
/// dataAccessScopeId: "scope-id",
/// description: "scope-description",
/// allowedDataAccessLabels: [
/// {
/// logType: "GCP_CLOUDAUDIT",
/// },
/// {
/// logType: "GITHUB",
/// },
/// ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example = gcp.chronicle.DataAccessScope("example",
/// location="us",
/// instance="00000000-0000-0000-0000-000000000000",
/// data_access_scope_id="scope-id",
/// description="scope-description",
/// allowed_data_access_labels=[
/// {
/// "log_type": "GCP_CLOUDAUDIT",
/// },
/// {
/// "log_type": "GITHUB",
/// },
/// ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Gcp.Chronicle.DataAccessScope("example", new()
/// {
/// Location = "us",
/// Instance = "00000000-0000-0000-0000-000000000000",
/// DataAccessScopeId = "scope-id",
/// Description = "scope-description",
/// AllowedDataAccessLabels = new[]
/// {
/// new Gcp.Chronicle.Inputs.DataAccessScopeAllowedDataAccessLabelArgs
/// {
/// LogType = "GCP_CLOUDAUDIT",
/// },
/// new Gcp.Chronicle.Inputs.DataAccessScopeAllowedDataAccessLabelArgs
/// {
/// LogType = "GITHUB",
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/chronicle"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := chronicle.NewDataAccessScope(ctx, "example", &chronicle.DataAccessScopeArgs{
/// Location:          pulumi.String("us"),
/// Instance:          pulumi.String("00000000-0000-0000-0000-000000000000"),
/// DataAccessScopeId: pulumi.String("scope-id"),
/// Description:       pulumi.String("scope-description"),
/// AllowedDataAccessLabels: chronicle.DataAccessScopeAllowedDataAccessLabelArray{
/// &chronicle.DataAccessScopeAllowedDataAccessLabelArgs{
/// LogType: pulumi.String("GCP_CLOUDAUDIT"),
/// },
/// &chronicle.DataAccessScopeAllowedDataAccessLabelArgs{
/// LogType: pulumi.String("GITHUB"),
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
/// import com.pulumi.gcp.chronicle.DataAccessScope;
/// import com.pulumi.gcp.chronicle.DataAccessScopeArgs;
/// import com.pulumi.gcp.chronicle.inputs.DataAccessScopeAllowedDataAccessLabelArgs;
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
/// var example = new DataAccessScope("example", DataAccessScopeArgs.builder()
/// .location("us")
/// .instance("00000000-0000-0000-0000-000000000000")
/// .dataAccessScopeId("scope-id")
/// .description("scope-description")
/// .allowedDataAccessLabels(
/// DataAccessScopeAllowedDataAccessLabelArgs.builder()
/// .logType("GCP_CLOUDAUDIT")
/// .build(),
/// DataAccessScopeAllowedDataAccessLabelArgs.builder()
/// .logType("GITHUB")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: gcp:chronicle:DataAccessScope
/// properties:
/// location: us
/// instance: 00000000-0000-0000-0000-000000000000
/// dataAccessScopeId: scope-id
/// description: scope-description
/// allowedDataAccessLabels:
/// - logType: GCP_CLOUDAUDIT
/// - logType: GITHUB
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Chronicle Dataaccessscope With Dataaccesslabel
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const customDataAccessLabel = new gcp.chronicle.DataAccessLabel("custom_data_access_label", {
/// location: "us",
/// instance: "00000000-0000-0000-0000-000000000000",
/// dataAccessLabelId: "label-id",
/// udmQuery: "principal.hostname=\"google.com\"",
/// });
/// const example = new gcp.chronicle.DataAccessScope("example", {
/// location: "us",
/// instance: "00000000-0000-0000-0000-000000000000",
/// dataAccessScopeId: "scope-id",
/// description: "scope-description",
/// allowedDataAccessLabels: [{
/// dataAccessLabel: googleChronicleDataAccessLabel.customDataAccessLabel.dataAccessLabelId,
/// }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// custom_data_access_label = gcp.chronicle.DataAccessLabel("custom_data_access_label",
/// location="us",
/// instance="00000000-0000-0000-0000-000000000000",
/// data_access_label_id="label-id",
/// udm_query="principal.hostname=\"google.com\"")
/// example = gcp.chronicle.DataAccessScope("example",
/// location="us",
/// instance="00000000-0000-0000-0000-000000000000",
/// data_access_scope_id="scope-id",
/// description="scope-description",
/// allowed_data_access_labels=[{
/// "data_access_label": google_chronicle_data_access_label["customDataAccessLabel"]["dataAccessLabelId"],
/// }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var customDataAccessLabel = new Gcp.Chronicle.DataAccessLabel("custom_data_access_label", new()
/// {
/// Location = "us",
/// Instance = "00000000-0000-0000-0000-000000000000",
/// DataAccessLabelId = "label-id",
/// UdmQuery = "principal.hostname=\"google.com\"",
/// });
///
/// var example = new Gcp.Chronicle.DataAccessScope("example", new()
/// {
/// Location = "us",
/// Instance = "00000000-0000-0000-0000-000000000000",
/// DataAccessScopeId = "scope-id",
/// Description = "scope-description",
/// AllowedDataAccessLabels = new[]
/// {
/// new Gcp.Chronicle.Inputs.DataAccessScopeAllowedDataAccessLabelArgs
/// {
/// DataAccessLabel = googleChronicleDataAccessLabel.CustomDataAccessLabel.DataAccessLabelId,
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/chronicle"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := chronicle.NewDataAccessLabel(ctx, "custom_data_access_label", &chronicle.DataAccessLabelArgs{
/// Location:          pulumi.String("us"),
/// Instance:          pulumi.String("00000000-0000-0000-0000-000000000000"),
/// DataAccessLabelId: pulumi.String("label-id"),
/// UdmQuery:          pulumi.String("principal.hostname=\"google.com\""),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = chronicle.NewDataAccessScope(ctx, "example", &chronicle.DataAccessScopeArgs{
/// Location:          pulumi.String("us"),
/// Instance:          pulumi.String("00000000-0000-0000-0000-000000000000"),
/// DataAccessScopeId: pulumi.String("scope-id"),
/// Description:       pulumi.String("scope-description"),
/// AllowedDataAccessLabels: chronicle.DataAccessScopeAllowedDataAccessLabelArray{
/// &chronicle.DataAccessScopeAllowedDataAccessLabelArgs{
/// DataAccessLabel: pulumi.Any(googleChronicleDataAccessLabel.CustomDataAccessLabel.DataAccessLabelId),
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
/// import com.pulumi.gcp.chronicle.DataAccessLabel;
/// import com.pulumi.gcp.chronicle.DataAccessLabelArgs;
/// import com.pulumi.gcp.chronicle.DataAccessScope;
/// import com.pulumi.gcp.chronicle.DataAccessScopeArgs;
/// import com.pulumi.gcp.chronicle.inputs.DataAccessScopeAllowedDataAccessLabelArgs;
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
/// var customDataAccessLabel = new DataAccessLabel("customDataAccessLabel", DataAccessLabelArgs.builder()
/// .location("us")
/// .instance("00000000-0000-0000-0000-000000000000")
/// .dataAccessLabelId("label-id")
/// .udmQuery("principal.hostname=\"google.com\"")
/// .build());
///
/// var example = new DataAccessScope("example", DataAccessScopeArgs.builder()
/// .location("us")
/// .instance("00000000-0000-0000-0000-000000000000")
/// .dataAccessScopeId("scope-id")
/// .description("scope-description")
/// .allowedDataAccessLabels(DataAccessScopeAllowedDataAccessLabelArgs.builder()
/// .dataAccessLabel(googleChronicleDataAccessLabel.customDataAccessLabel().dataAccessLabelId())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// customDataAccessLabel:
/// type: gcp:chronicle:DataAccessLabel
/// name: custom_data_access_label
/// properties:
/// location: us
/// instance: 00000000-0000-0000-0000-000000000000
/// dataAccessLabelId: label-id
/// udmQuery: principal.hostname="google.com"
/// example:
/// type: gcp:chronicle:DataAccessScope
/// properties:
/// location: us
/// instance: 00000000-0000-0000-0000-000000000000
/// dataAccessScopeId: scope-id
/// description: scope-description
/// allowedDataAccessLabels:
/// - dataAccessLabel: ${googleChronicleDataAccessLabel.customDataAccessLabel.dataAccessLabelId}
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Chronicle Dataaccessscope With Asset Namespace
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example = new gcp.chronicle.DataAccessScope("example", {
/// location: "us",
/// instance: "00000000-0000-0000-0000-000000000000",
/// dataAccessScopeId: "scope-id",
/// description: "scope-description",
/// allowedDataAccessLabels: [{
/// assetNamespace: "my-namespace",
/// }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example = gcp.chronicle.DataAccessScope("example",
/// location="us",
/// instance="00000000-0000-0000-0000-000000000000",
/// data_access_scope_id="scope-id",
/// description="scope-description",
/// allowed_data_access_labels=[{
/// "asset_namespace": "my-namespace",
/// }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Gcp.Chronicle.DataAccessScope("example", new()
/// {
/// Location = "us",
/// Instance = "00000000-0000-0000-0000-000000000000",
/// DataAccessScopeId = "scope-id",
/// Description = "scope-description",
/// AllowedDataAccessLabels = new[]
/// {
/// new Gcp.Chronicle.Inputs.DataAccessScopeAllowedDataAccessLabelArgs
/// {
/// AssetNamespace = "my-namespace",
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/chronicle"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := chronicle.NewDataAccessScope(ctx, "example", &chronicle.DataAccessScopeArgs{
/// Location:          pulumi.String("us"),
/// Instance:          pulumi.String("00000000-0000-0000-0000-000000000000"),
/// DataAccessScopeId: pulumi.String("scope-id"),
/// Description:       pulumi.String("scope-description"),
/// AllowedDataAccessLabels: chronicle.DataAccessScopeAllowedDataAccessLabelArray{
/// &chronicle.DataAccessScopeAllowedDataAccessLabelArgs{
/// AssetNamespace: pulumi.String("my-namespace"),
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
/// import com.pulumi.gcp.chronicle.DataAccessScope;
/// import com.pulumi.gcp.chronicle.DataAccessScopeArgs;
/// import com.pulumi.gcp.chronicle.inputs.DataAccessScopeAllowedDataAccessLabelArgs;
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
/// var example = new DataAccessScope("example", DataAccessScopeArgs.builder()
/// .location("us")
/// .instance("00000000-0000-0000-0000-000000000000")
/// .dataAccessScopeId("scope-id")
/// .description("scope-description")
/// .allowedDataAccessLabels(DataAccessScopeAllowedDataAccessLabelArgs.builder()
/// .assetNamespace("my-namespace")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: gcp:chronicle:DataAccessScope
/// properties:
/// location: us
/// instance: 00000000-0000-0000-0000-000000000000
/// dataAccessScopeId: scope-id
/// description: scope-description
/// allowedDataAccessLabels:
/// - assetNamespace: my-namespace
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Chronicle Dataaccessscope With Ingestion Label
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example = new gcp.chronicle.DataAccessScope("example", {
/// location: "us",
/// instance: "00000000-0000-0000-0000-000000000000",
/// dataAccessScopeId: "scope-id",
/// description: "scope-description",
/// allowedDataAccessLabels: [{
/// ingestionLabel: {
/// ingestionLabelKey: "ingestion_key",
/// ingestionLabelValue: "ingestion_value",
/// },
/// }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example = gcp.chronicle.DataAccessScope("example",
/// location="us",
/// instance="00000000-0000-0000-0000-000000000000",
/// data_access_scope_id="scope-id",
/// description="scope-description",
/// allowed_data_access_labels=[{
/// "ingestion_label": {
/// "ingestion_label_key": "ingestion_key",
/// "ingestion_label_value": "ingestion_value",
/// },
/// }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Gcp.Chronicle.DataAccessScope("example", new()
/// {
/// Location = "us",
/// Instance = "00000000-0000-0000-0000-000000000000",
/// DataAccessScopeId = "scope-id",
/// Description = "scope-description",
/// AllowedDataAccessLabels = new[]
/// {
/// new Gcp.Chronicle.Inputs.DataAccessScopeAllowedDataAccessLabelArgs
/// {
/// IngestionLabel = new Gcp.Chronicle.Inputs.DataAccessScopeAllowedDataAccessLabelIngestionLabelArgs
/// {
/// IngestionLabelKey = "ingestion_key",
/// IngestionLabelValue = "ingestion_value",
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/chronicle"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := chronicle.NewDataAccessScope(ctx, "example", &chronicle.DataAccessScopeArgs{
/// Location:          pulumi.String("us"),
/// Instance:          pulumi.String("00000000-0000-0000-0000-000000000000"),
/// DataAccessScopeId: pulumi.String("scope-id"),
/// Description:       pulumi.String("scope-description"),
/// AllowedDataAccessLabels: chronicle.DataAccessScopeAllowedDataAccessLabelArray{
/// &chronicle.DataAccessScopeAllowedDataAccessLabelArgs{
/// IngestionLabel: &chronicle.DataAccessScopeAllowedDataAccessLabelIngestionLabelArgs{
/// IngestionLabelKey:   pulumi.String("ingestion_key"),
/// IngestionLabelValue: pulumi.String("ingestion_value"),
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
/// import com.pulumi.gcp.chronicle.DataAccessScope;
/// import com.pulumi.gcp.chronicle.DataAccessScopeArgs;
/// import com.pulumi.gcp.chronicle.inputs.DataAccessScopeAllowedDataAccessLabelArgs;
/// import com.pulumi.gcp.chronicle.inputs.DataAccessScopeAllowedDataAccessLabelIngestionLabelArgs;
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
/// var example = new DataAccessScope("example", DataAccessScopeArgs.builder()
/// .location("us")
/// .instance("00000000-0000-0000-0000-000000000000")
/// .dataAccessScopeId("scope-id")
/// .description("scope-description")
/// .allowedDataAccessLabels(DataAccessScopeAllowedDataAccessLabelArgs.builder()
/// .ingestionLabel(DataAccessScopeAllowedDataAccessLabelIngestionLabelArgs.builder()
/// .ingestionLabelKey("ingestion_key")
/// .ingestionLabelValue("ingestion_value")
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: gcp:chronicle:DataAccessScope
/// properties:
/// location: us
/// instance: 00000000-0000-0000-0000-000000000000
/// dataAccessScopeId: scope-id
/// description: scope-description
/// allowedDataAccessLabels:
/// - ingestionLabel:
/// ingestionLabelKey: ingestion_key
/// ingestionLabelValue: ingestion_value
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Chronicle Dataaccessscope With Denied Labels
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const customDataAccessLabel = new gcp.chronicle.DataAccessLabel("custom_data_access_label", {
/// location: "us",
/// instance: "00000000-0000-0000-0000-000000000000",
/// dataAccessLabelId: "label-id",
/// udmQuery: "principal.hostname=\"google.com\"",
/// });
/// const example = new gcp.chronicle.DataAccessScope("example", {
/// location: "us",
/// instance: "00000000-0000-0000-0000-000000000000",
/// dataAccessScopeId: "scope-id",
/// description: "scope-description",
/// allowAll: true,
/// deniedDataAccessLabels: [
/// {
/// logType: "GCP_CLOUDAUDIT",
/// },
/// {
/// dataAccessLabel: googleChronicleDataAccessLabel.customDataAccessLabel.dataAccessLabelId,
/// },
/// {
/// ingestionLabel: {
/// ingestionLabelKey: "ingestion_key",
/// ingestionLabelValue: "ingestion_value",
/// },
/// },
/// {
/// assetNamespace: "my-namespace",
/// },
/// ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// custom_data_access_label = gcp.chronicle.DataAccessLabel("custom_data_access_label",
/// location="us",
/// instance="00000000-0000-0000-0000-000000000000",
/// data_access_label_id="label-id",
/// udm_query="principal.hostname=\"google.com\"")
/// example = gcp.chronicle.DataAccessScope("example",
/// location="us",
/// instance="00000000-0000-0000-0000-000000000000",
/// data_access_scope_id="scope-id",
/// description="scope-description",
/// allow_all=True,
/// denied_data_access_labels=[
/// {
/// "log_type": "GCP_CLOUDAUDIT",
/// },
/// {
/// "data_access_label": google_chronicle_data_access_label["customDataAccessLabel"]["dataAccessLabelId"],
/// },
/// {
/// "ingestion_label": {
/// "ingestion_label_key": "ingestion_key",
/// "ingestion_label_value": "ingestion_value",
/// },
/// },
/// {
/// "asset_namespace": "my-namespace",
/// },
/// ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var customDataAccessLabel = new Gcp.Chronicle.DataAccessLabel("custom_data_access_label", new()
/// {
/// Location = "us",
/// Instance = "00000000-0000-0000-0000-000000000000",
/// DataAccessLabelId = "label-id",
/// UdmQuery = "principal.hostname=\"google.com\"",
/// });
///
/// var example = new Gcp.Chronicle.DataAccessScope("example", new()
/// {
/// Location = "us",
/// Instance = "00000000-0000-0000-0000-000000000000",
/// DataAccessScopeId = "scope-id",
/// Description = "scope-description",
/// AllowAll = true,
/// DeniedDataAccessLabels = new[]
/// {
/// new Gcp.Chronicle.Inputs.DataAccessScopeDeniedDataAccessLabelArgs
/// {
/// LogType = "GCP_CLOUDAUDIT",
/// },
/// new Gcp.Chronicle.Inputs.DataAccessScopeDeniedDataAccessLabelArgs
/// {
/// DataAccessLabel = googleChronicleDataAccessLabel.CustomDataAccessLabel.DataAccessLabelId,
/// },
/// new Gcp.Chronicle.Inputs.DataAccessScopeDeniedDataAccessLabelArgs
/// {
/// IngestionLabel = new Gcp.Chronicle.Inputs.DataAccessScopeDeniedDataAccessLabelIngestionLabelArgs
/// {
/// IngestionLabelKey = "ingestion_key",
/// IngestionLabelValue = "ingestion_value",
/// },
/// },
/// new Gcp.Chronicle.Inputs.DataAccessScopeDeniedDataAccessLabelArgs
/// {
/// AssetNamespace = "my-namespace",
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/chronicle"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := chronicle.NewDataAccessLabel(ctx, "custom_data_access_label", &chronicle.DataAccessLabelArgs{
/// Location:          pulumi.String("us"),
/// Instance:          pulumi.String("00000000-0000-0000-0000-000000000000"),
/// DataAccessLabelId: pulumi.String("label-id"),
/// UdmQuery:          pulumi.String("principal.hostname=\"google.com\""),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = chronicle.NewDataAccessScope(ctx, "example", &chronicle.DataAccessScopeArgs{
/// Location:          pulumi.String("us"),
/// Instance:          pulumi.String("00000000-0000-0000-0000-000000000000"),
/// DataAccessScopeId: pulumi.String("scope-id"),
/// Description:       pulumi.String("scope-description"),
/// AllowAll:          pulumi.Bool(true),
/// DeniedDataAccessLabels: chronicle.DataAccessScopeDeniedDataAccessLabelArray{
/// &chronicle.DataAccessScopeDeniedDataAccessLabelArgs{
/// LogType: pulumi.String("GCP_CLOUDAUDIT"),
/// },
/// &chronicle.DataAccessScopeDeniedDataAccessLabelArgs{
/// DataAccessLabel: pulumi.Any(googleChronicleDataAccessLabel.CustomDataAccessLabel.DataAccessLabelId),
/// },
/// &chronicle.DataAccessScopeDeniedDataAccessLabelArgs{
/// IngestionLabel: &chronicle.DataAccessScopeDeniedDataAccessLabelIngestionLabelArgs{
/// IngestionLabelKey:   pulumi.String("ingestion_key"),
/// IngestionLabelValue: pulumi.String("ingestion_value"),
/// },
/// },
/// &chronicle.DataAccessScopeDeniedDataAccessLabelArgs{
/// AssetNamespace: pulumi.String("my-namespace"),
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
/// import com.pulumi.gcp.chronicle.DataAccessLabel;
/// import com.pulumi.gcp.chronicle.DataAccessLabelArgs;
/// import com.pulumi.gcp.chronicle.DataAccessScope;
/// import com.pulumi.gcp.chronicle.DataAccessScopeArgs;
/// import com.pulumi.gcp.chronicle.inputs.DataAccessScopeDeniedDataAccessLabelArgs;
/// import com.pulumi.gcp.chronicle.inputs.DataAccessScopeDeniedDataAccessLabelIngestionLabelArgs;
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
/// var customDataAccessLabel = new DataAccessLabel("customDataAccessLabel", DataAccessLabelArgs.builder()
/// .location("us")
/// .instance("00000000-0000-0000-0000-000000000000")
/// .dataAccessLabelId("label-id")
/// .udmQuery("principal.hostname=\"google.com\"")
/// .build());
///
/// var example = new DataAccessScope("example", DataAccessScopeArgs.builder()
/// .location("us")
/// .instance("00000000-0000-0000-0000-000000000000")
/// .dataAccessScopeId("scope-id")
/// .description("scope-description")
/// .allowAll(true)
/// .deniedDataAccessLabels(
/// DataAccessScopeDeniedDataAccessLabelArgs.builder()
/// .logType("GCP_CLOUDAUDIT")
/// .build(),
/// DataAccessScopeDeniedDataAccessLabelArgs.builder()
/// .dataAccessLabel(googleChronicleDataAccessLabel.customDataAccessLabel().dataAccessLabelId())
/// .build(),
/// DataAccessScopeDeniedDataAccessLabelArgs.builder()
/// .ingestionLabel(DataAccessScopeDeniedDataAccessLabelIngestionLabelArgs.builder()
/// .ingestionLabelKey("ingestion_key")
/// .ingestionLabelValue("ingestion_value")
/// .build())
/// .build(),
/// DataAccessScopeDeniedDataAccessLabelArgs.builder()
/// .assetNamespace("my-namespace")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// customDataAccessLabel:
/// type: gcp:chronicle:DataAccessLabel
/// name: custom_data_access_label
/// properties:
/// location: us
/// instance: 00000000-0000-0000-0000-000000000000
/// dataAccessLabelId: label-id
/// udmQuery: principal.hostname="google.com"
/// example:
/// type: gcp:chronicle:DataAccessScope
/// properties:
/// location: us
/// instance: 00000000-0000-0000-0000-000000000000
/// dataAccessScopeId: scope-id
/// description: scope-description
/// allowAll: true
/// deniedDataAccessLabels:
/// - logType: GCP_CLOUDAUDIT
/// - dataAccessLabel: ${googleChronicleDataAccessLabel.customDataAccessLabel.dataAccessLabelId}
/// - ingestionLabel:
/// ingestionLabelKey: ingestion_key
/// ingestionLabelValue: ingestion_value
/// - assetNamespace: my-namespace
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// DataAccessScope can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/instances/{{instance}}/dataAccessScopes/{{data_access_scope_id}}`
///
/// * `{{project}}/{{location}}/{{instance}}/{{data_access_scope_id}}`
///
/// * `{{location}}/{{instance}}/{{data_access_scope_id}}`
///
/// When using the `pulumi import` command, DataAccessScope can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:chronicle/dataAccessScope:DataAccessScope default projects/{{project}}/locations/{{location}}/instances/{{instance}}/dataAccessScopes/{{data_access_scope_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:chronicle/dataAccessScope:DataAccessScope default {{project}}/{{location}}/{{instance}}/{{data_access_scope_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:chronicle/dataAccessScope:DataAccessScope default {{location}}/{{instance}}/{{data_access_scope_id}}
/// ```
class DataAccessScope extends CustomResource {
  /// Optional. Whether or not the scope allows all labels,<span pulumi-lang-nodejs=" allowAll " pulumi-lang-dotnet=" AllowAll " pulumi-lang-go=" allowAll " pulumi-lang-python=" allow_all " pulumi-lang-yaml=" allowAll " pulumi-lang-java=" allowAll "> allow_all </span>and<span pulumi-lang-nodejs="
  /// allowedDataAccessLabels " pulumi-lang-dotnet="
  /// AllowedDataAccessLabels " pulumi-lang-go="
  /// allowedDataAccessLabels " pulumi-lang-python="
  /// allowed_data_access_labels " pulumi-lang-yaml="
  /// allowedDataAccessLabels " pulumi-lang-java="
  /// allowedDataAccessLabels ">
  /// allowed_data_access_labels </span>are mutually exclusive and one of them must be
  /// present.<span pulumi-lang-nodejs=" deniedDataAccessLabels " pulumi-lang-dotnet=" DeniedDataAccessLabels " pulumi-lang-go=" deniedDataAccessLabels " pulumi-lang-python=" denied_data_access_labels " pulumi-lang-yaml=" deniedDataAccessLabels " pulumi-lang-java=" deniedDataAccessLabels "> denied_data_access_labels </span>can still be used along with allow_all.
  /// When combined with denied_data_access_labels, access will be granted to all
  /// data that doesn't have labels mentioned in denied_data_access_labels. E.g.:
  /// A customer with scope with denied labels A and B and<span pulumi-lang-nodejs=" allowAll " pulumi-lang-dotnet=" AllowAll " pulumi-lang-go=" allowAll " pulumi-lang-python=" allow_all " pulumi-lang-yaml=" allowAll " pulumi-lang-java=" allowAll "> allow_all </span>will be able
  /// to see all data except data labeled with A and data labeled with B and data
  /// with labels A and B.
  late final Output<bool?> allowAll;

  /// The allowed labels for the scope. There has to be at
  /// least one label allowed for the scope to be valid.
  /// The logical operator for evaluation of the allowed labels is OR.
  /// Either<span pulumi-lang-nodejs=" allowAll " pulumi-lang-dotnet=" AllowAll " pulumi-lang-go=" allowAll " pulumi-lang-python=" allow_all " pulumi-lang-yaml=" allowAll " pulumi-lang-java=" allowAll "> allow_all </span>or<span pulumi-lang-nodejs=" allowedDataAccessLabels " pulumi-lang-dotnet=" AllowedDataAccessLabels " pulumi-lang-go=" allowedDataAccessLabels " pulumi-lang-python=" allowed_data_access_labels " pulumi-lang-yaml=" allowedDataAccessLabels " pulumi-lang-java=" allowedDataAccessLabels "> allowed_data_access_labels </span>needs to be provided.
  /// E.g.: A customer with scope with allowed labels A and B will be able
  /// to see data with labeled with A or B or (A and B).
  /// Structure is documented below.
  late final Output<List<DataAccessScopeAllowedDataAccessLabel>?>
      allowedDataAccessLabels;

  /// Output only. The user who created the data access scope.
  late final Output<String> author;

  /// Output only. The time at which the data access scope was created.
  late final Output<String> createTime;

  /// Required. The user provided scope id which will become the last part of the name
  /// of the scope resource.
  /// Needs to be compliant with https://google.aip.dev/122
  late final Output<String> dataAccessScopeId;

  /// Optional. The denied labels for the scope.
  /// The logical operator for evaluation of the denied labels is AND.
  /// E.g.: A customer with scope with denied labels A and B won't be able
  /// to see data labeled with A and data labeled with B
  /// and data with labels A and B.
  /// Structure is documented below.
  late final Output<List<DataAccessScopeDeniedDataAccessLabel>?>
      deniedDataAccessLabels;

  /// Optional. A description of the data access scope for a human reader.
  late final Output<String?> description;

  /// Output only. The name to be used for display to customers of the data access scope.
  late final Output<String> displayName;

  /// The unique identifier for the Chronicle instance, which is the same as the customer ID.
  late final Output<String> instance;

  /// Output only. The user who last updated the data access scope.
  late final Output<String> lastEditor;

  /// The location of the resource. This is the geographical region where the Chronicle instance resides, such as "us" or "europe-west2".
  late final Output<String> location;

  /// The unique full name of the data access scope. This unique identifier is generated using values provided for the URL parameters.
  /// Format:
  /// projects/{project}/locations/{location}/instances/{instance}/dataAccessScopes/{data_access_scope_id}
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// Output only. The time at which the data access scope was last updated.
  late final Output<String> updateTime;

  DataAccessScope(
    String name, {
    DataAccessScopeArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:chronicle/dataAccessScope:DataAccessScope',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.allowAll = Output.createUnknown<bool?>();
    this.allowedDataAccessLabels =
        Output.createUnknown<List<DataAccessScopeAllowedDataAccessLabel>?>();
    this.author = Output.createUnknown<String>();
    this.createTime = Output.createUnknown<String>();
    this.dataAccessScopeId = Output.createUnknown<String>();
    this.deniedDataAccessLabels =
        Output.createUnknown<List<DataAccessScopeDeniedDataAccessLabel>?>();
    this.description = Output.createUnknown<String?>();
    this.displayName = Output.createUnknown<String>();
    this.instance = Output.createUnknown<String>();
    this.lastEditor = Output.createUnknown<String>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.updateTime = Output.createUnknown<String>();
  }
}
