import 'package:pulumi/pulumi.dart';
import '../account_connector_provider_oauth_config/account_connector_provider_oauth_config.dart';
import 'account_connector_args.dart';

/// Description
///
///
///
/// ## Example Usage
///
/// ### Developer Connect Account Connector Github
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const my_account_connector = new gcp.developerconnect.AccountConnector("my-account-connector", {
/// location: "us-central1",
/// accountConnectorId: "tf-test-ac",
/// providerOauthConfig: {
/// systemProviderId: "GITHUB",
/// scopes: ["repo"],
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_account_connector = gcp.developerconnect.AccountConnector("my-account-connector",
/// location="us-central1",
/// account_connector_id="tf-test-ac",
/// provider_oauth_config={
/// "system_provider_id": "GITHUB",
/// "scopes": ["repo"],
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
/// var my_account_connector = new Gcp.DeveloperConnect.AccountConnector("my-account-connector", new()
/// {
/// Location = "us-central1",
/// AccountConnectorId = "tf-test-ac",
/// ProviderOauthConfig = new Gcp.DeveloperConnect.Inputs.AccountConnectorProviderOauthConfigArgs
/// {
/// SystemProviderId = "GITHUB",
/// Scopes = new[]
/// {
/// "repo",
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/developerconnect"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := developerconnect.NewAccountConnector(ctx, "my-account-connector", &developerconnect.AccountConnectorArgs{
/// Location:           pulumi.String("us-central1"),
/// AccountConnectorId: pulumi.String("tf-test-ac"),
/// ProviderOauthConfig: &developerconnect.AccountConnectorProviderOauthConfigArgs{
/// SystemProviderId: pulumi.String("GITHUB"),
/// Scopes: pulumi.StringArray{
/// pulumi.String("repo"),
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
/// import com.pulumi.gcp.developerconnect.AccountConnector;
/// import com.pulumi.gcp.developerconnect.AccountConnectorArgs;
/// import com.pulumi.gcp.developerconnect.inputs.AccountConnectorProviderOauthConfigArgs;
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
/// var my_account_connector = new AccountConnector("my-account-connector", AccountConnectorArgs.builder()
/// .location("us-central1")
/// .accountConnectorId("tf-test-ac")
/// .providerOauthConfig(AccountConnectorProviderOauthConfigArgs.builder()
/// .systemProviderId("GITHUB")
/// .scopes("repo")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// my-account-connector:
/// type: gcp:developerconnect:AccountConnector
/// properties:
/// location: us-central1
/// accountConnectorId: tf-test-ac
/// providerOauthConfig:
/// systemProviderId: GITHUB
/// scopes:
/// - repo
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Developer Connect Account Connector Gitlab
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const my_account_connector = new gcp.developerconnect.AccountConnector("my-account-connector", {
/// location: "us-central1",
/// accountConnectorId: "tf-test-ac",
/// providerOauthConfig: {
/// systemProviderId: "GITLAB",
/// scopes: ["api"],
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_account_connector = gcp.developerconnect.AccountConnector("my-account-connector",
/// location="us-central1",
/// account_connector_id="tf-test-ac",
/// provider_oauth_config={
/// "system_provider_id": "GITLAB",
/// "scopes": ["api"],
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
/// var my_account_connector = new Gcp.DeveloperConnect.AccountConnector("my-account-connector", new()
/// {
/// Location = "us-central1",
/// AccountConnectorId = "tf-test-ac",
/// ProviderOauthConfig = new Gcp.DeveloperConnect.Inputs.AccountConnectorProviderOauthConfigArgs
/// {
/// SystemProviderId = "GITLAB",
/// Scopes = new[]
/// {
/// "api",
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/developerconnect"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := developerconnect.NewAccountConnector(ctx, "my-account-connector", &developerconnect.AccountConnectorArgs{
/// Location:           pulumi.String("us-central1"),
/// AccountConnectorId: pulumi.String("tf-test-ac"),
/// ProviderOauthConfig: &developerconnect.AccountConnectorProviderOauthConfigArgs{
/// SystemProviderId: pulumi.String("GITLAB"),
/// Scopes: pulumi.StringArray{
/// pulumi.String("api"),
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
/// import com.pulumi.gcp.developerconnect.AccountConnector;
/// import com.pulumi.gcp.developerconnect.AccountConnectorArgs;
/// import com.pulumi.gcp.developerconnect.inputs.AccountConnectorProviderOauthConfigArgs;
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
/// var my_account_connector = new AccountConnector("my-account-connector", AccountConnectorArgs.builder()
/// .location("us-central1")
/// .accountConnectorId("tf-test-ac")
/// .providerOauthConfig(AccountConnectorProviderOauthConfigArgs.builder()
/// .systemProviderId("GITLAB")
/// .scopes("api")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// my-account-connector:
/// type: gcp:developerconnect:AccountConnector
/// properties:
/// location: us-central1
/// accountConnectorId: tf-test-ac
/// providerOauthConfig:
/// systemProviderId: GITLAB
/// scopes:
/// - api
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Developer Connect Account Connector Google
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const my_account_connector = new gcp.developerconnect.AccountConnector("my-account-connector", {
/// location: "us-central1",
/// accountConnectorId: "tf-test-ac",
/// providerOauthConfig: {
/// systemProviderId: "GOOGLE",
/// scopes: ["https://www.googleapis.com/auth/drive.readonly"],
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_account_connector = gcp.developerconnect.AccountConnector("my-account-connector",
/// location="us-central1",
/// account_connector_id="tf-test-ac",
/// provider_oauth_config={
/// "system_provider_id": "GOOGLE",
/// "scopes": ["https://www.googleapis.com/auth/drive.readonly"],
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
/// var my_account_connector = new Gcp.DeveloperConnect.AccountConnector("my-account-connector", new()
/// {
/// Location = "us-central1",
/// AccountConnectorId = "tf-test-ac",
/// ProviderOauthConfig = new Gcp.DeveloperConnect.Inputs.AccountConnectorProviderOauthConfigArgs
/// {
/// SystemProviderId = "GOOGLE",
/// Scopes = new[]
/// {
/// "https://www.googleapis.com/auth/drive.readonly",
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/developerconnect"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := developerconnect.NewAccountConnector(ctx, "my-account-connector", &developerconnect.AccountConnectorArgs{
/// Location:           pulumi.String("us-central1"),
/// AccountConnectorId: pulumi.String("tf-test-ac"),
/// ProviderOauthConfig: &developerconnect.AccountConnectorProviderOauthConfigArgs{
/// SystemProviderId: pulumi.String("GOOGLE"),
/// Scopes: pulumi.StringArray{
/// pulumi.String("https://www.googleapis.com/auth/drive.readonly"),
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
/// import com.pulumi.gcp.developerconnect.AccountConnector;
/// import com.pulumi.gcp.developerconnect.AccountConnectorArgs;
/// import com.pulumi.gcp.developerconnect.inputs.AccountConnectorProviderOauthConfigArgs;
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
/// var my_account_connector = new AccountConnector("my-account-connector", AccountConnectorArgs.builder()
/// .location("us-central1")
/// .accountConnectorId("tf-test-ac")
/// .providerOauthConfig(AccountConnectorProviderOauthConfigArgs.builder()
/// .systemProviderId("GOOGLE")
/// .scopes("https://www.googleapis.com/auth/drive.readonly")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// my-account-connector:
/// type: gcp:developerconnect:AccountConnector
/// properties:
/// location: us-central1
/// accountConnectorId: tf-test-ac
/// providerOauthConfig:
/// systemProviderId: GOOGLE
/// scopes:
/// - https://www.googleapis.com/auth/drive.readonly
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Developer Connect Account Connector Sentry
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const my_account_connector = new gcp.developerconnect.AccountConnector("my-account-connector", {
/// location: "us-central1",
/// accountConnectorId: "tf-test-ac",
/// providerOauthConfig: {
/// systemProviderId: "SENTRY",
/// scopes: ["org:read"],
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_account_connector = gcp.developerconnect.AccountConnector("my-account-connector",
/// location="us-central1",
/// account_connector_id="tf-test-ac",
/// provider_oauth_config={
/// "system_provider_id": "SENTRY",
/// "scopes": ["org:read"],
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
/// var my_account_connector = new Gcp.DeveloperConnect.AccountConnector("my-account-connector", new()
/// {
/// Location = "us-central1",
/// AccountConnectorId = "tf-test-ac",
/// ProviderOauthConfig = new Gcp.DeveloperConnect.Inputs.AccountConnectorProviderOauthConfigArgs
/// {
/// SystemProviderId = "SENTRY",
/// Scopes = new[]
/// {
/// "org:read",
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/developerconnect"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := developerconnect.NewAccountConnector(ctx, "my-account-connector", &developerconnect.AccountConnectorArgs{
/// Location:           pulumi.String("us-central1"),
/// AccountConnectorId: pulumi.String("tf-test-ac"),
/// ProviderOauthConfig: &developerconnect.AccountConnectorProviderOauthConfigArgs{
/// SystemProviderId: pulumi.String("SENTRY"),
/// Scopes: pulumi.StringArray{
/// pulumi.String("org:read"),
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
/// import com.pulumi.gcp.developerconnect.AccountConnector;
/// import com.pulumi.gcp.developerconnect.AccountConnectorArgs;
/// import com.pulumi.gcp.developerconnect.inputs.AccountConnectorProviderOauthConfigArgs;
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
/// var my_account_connector = new AccountConnector("my-account-connector", AccountConnectorArgs.builder()
/// .location("us-central1")
/// .accountConnectorId("tf-test-ac")
/// .providerOauthConfig(AccountConnectorProviderOauthConfigArgs.builder()
/// .systemProviderId("SENTRY")
/// .scopes("org:read")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// my-account-connector:
/// type: gcp:developerconnect:AccountConnector
/// properties:
/// location: us-central1
/// accountConnectorId: tf-test-ac
/// providerOauthConfig:
/// systemProviderId: SENTRY
/// scopes:
/// - org:read
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Developer Connect Account Connector Rovo
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const my_account_connector = new gcp.developerconnect.AccountConnector("my-account-connector", {
/// location: "us-central1",
/// accountConnectorId: "tf-test-ac",
/// providerOauthConfig: {
/// systemProviderId: "ROVO",
/// scopes: ["rovo"],
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_account_connector = gcp.developerconnect.AccountConnector("my-account-connector",
/// location="us-central1",
/// account_connector_id="tf-test-ac",
/// provider_oauth_config={
/// "system_provider_id": "ROVO",
/// "scopes": ["rovo"],
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
/// var my_account_connector = new Gcp.DeveloperConnect.AccountConnector("my-account-connector", new()
/// {
/// Location = "us-central1",
/// AccountConnectorId = "tf-test-ac",
/// ProviderOauthConfig = new Gcp.DeveloperConnect.Inputs.AccountConnectorProviderOauthConfigArgs
/// {
/// SystemProviderId = "ROVO",
/// Scopes = new[]
/// {
/// "rovo",
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/developerconnect"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := developerconnect.NewAccountConnector(ctx, "my-account-connector", &developerconnect.AccountConnectorArgs{
/// Location:           pulumi.String("us-central1"),
/// AccountConnectorId: pulumi.String("tf-test-ac"),
/// ProviderOauthConfig: &developerconnect.AccountConnectorProviderOauthConfigArgs{
/// SystemProviderId: pulumi.String("ROVO"),
/// Scopes: pulumi.StringArray{
/// pulumi.String("rovo"),
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
/// import com.pulumi.gcp.developerconnect.AccountConnector;
/// import com.pulumi.gcp.developerconnect.AccountConnectorArgs;
/// import com.pulumi.gcp.developerconnect.inputs.AccountConnectorProviderOauthConfigArgs;
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
/// var my_account_connector = new AccountConnector("my-account-connector", AccountConnectorArgs.builder()
/// .location("us-central1")
/// .accountConnectorId("tf-test-ac")
/// .providerOauthConfig(AccountConnectorProviderOauthConfigArgs.builder()
/// .systemProviderId("ROVO")
/// .scopes("rovo")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// my-account-connector:
/// type: gcp:developerconnect:AccountConnector
/// properties:
/// location: us-central1
/// accountConnectorId: tf-test-ac
/// providerOauthConfig:
/// systemProviderId: ROVO
/// scopes:
/// - rovo
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Developer Connect Account Connector New Relic
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const my_account_connector = new gcp.developerconnect.AccountConnector("my-account-connector", {
/// location: "us-central1",
/// accountConnectorId: "tf-test-ac",
/// providerOauthConfig: {
/// systemProviderId: "NEW_RELIC",
/// scopes: [],
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_account_connector = gcp.developerconnect.AccountConnector("my-account-connector",
/// location="us-central1",
/// account_connector_id="tf-test-ac",
/// provider_oauth_config={
/// "system_provider_id": "NEW_RELIC",
/// "scopes": [],
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
/// var my_account_connector = new Gcp.DeveloperConnect.AccountConnector("my-account-connector", new()
/// {
/// Location = "us-central1",
/// AccountConnectorId = "tf-test-ac",
/// ProviderOauthConfig = new Gcp.DeveloperConnect.Inputs.AccountConnectorProviderOauthConfigArgs
/// {
/// SystemProviderId = "NEW_RELIC",
/// Scopes = new() { },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/developerconnect"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := developerconnect.NewAccountConnector(ctx, "my-account-connector", &developerconnect.AccountConnectorArgs{
/// Location:           pulumi.String("us-central1"),
/// AccountConnectorId: pulumi.String("tf-test-ac"),
/// ProviderOauthConfig: &developerconnect.AccountConnectorProviderOauthConfigArgs{
/// SystemProviderId: pulumi.String("NEW_RELIC"),
/// Scopes:           pulumi.StringArray{},
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
/// import com.pulumi.gcp.developerconnect.AccountConnector;
/// import com.pulumi.gcp.developerconnect.AccountConnectorArgs;
/// import com.pulumi.gcp.developerconnect.inputs.AccountConnectorProviderOauthConfigArgs;
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
/// var my_account_connector = new AccountConnector("my-account-connector", AccountConnectorArgs.builder()
/// .location("us-central1")
/// .accountConnectorId("tf-test-ac")
/// .providerOauthConfig(AccountConnectorProviderOauthConfigArgs.builder()
/// .systemProviderId("NEW_RELIC")
/// .scopes()
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// my-account-connector:
/// type: gcp:developerconnect:AccountConnector
/// properties:
/// location: us-central1
/// accountConnectorId: tf-test-ac
/// providerOauthConfig:
/// systemProviderId: NEW_RELIC
/// scopes: []
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Developer Connect Account Connector Datastax
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const my_account_connector = new gcp.developerconnect.AccountConnector("my-account-connector", {
/// location: "us-central1",
/// accountConnectorId: "tf-test-ac",
/// providerOauthConfig: {
/// systemProviderId: "DATASTAX",
/// scopes: [],
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_account_connector = gcp.developerconnect.AccountConnector("my-account-connector",
/// location="us-central1",
/// account_connector_id="tf-test-ac",
/// provider_oauth_config={
/// "system_provider_id": "DATASTAX",
/// "scopes": [],
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
/// var my_account_connector = new Gcp.DeveloperConnect.AccountConnector("my-account-connector", new()
/// {
/// Location = "us-central1",
/// AccountConnectorId = "tf-test-ac",
/// ProviderOauthConfig = new Gcp.DeveloperConnect.Inputs.AccountConnectorProviderOauthConfigArgs
/// {
/// SystemProviderId = "DATASTAX",
/// Scopes = new() { },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/developerconnect"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := developerconnect.NewAccountConnector(ctx, "my-account-connector", &developerconnect.AccountConnectorArgs{
/// Location:           pulumi.String("us-central1"),
/// AccountConnectorId: pulumi.String("tf-test-ac"),
/// ProviderOauthConfig: &developerconnect.AccountConnectorProviderOauthConfigArgs{
/// SystemProviderId: pulumi.String("DATASTAX"),
/// Scopes:           pulumi.StringArray{},
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
/// import com.pulumi.gcp.developerconnect.AccountConnector;
/// import com.pulumi.gcp.developerconnect.AccountConnectorArgs;
/// import com.pulumi.gcp.developerconnect.inputs.AccountConnectorProviderOauthConfigArgs;
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
/// var my_account_connector = new AccountConnector("my-account-connector", AccountConnectorArgs.builder()
/// .location("us-central1")
/// .accountConnectorId("tf-test-ac")
/// .providerOauthConfig(AccountConnectorProviderOauthConfigArgs.builder()
/// .systemProviderId("DATASTAX")
/// .scopes()
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// my-account-connector:
/// type: gcp:developerconnect:AccountConnector
/// properties:
/// location: us-central1
/// accountConnectorId: tf-test-ac
/// providerOauthConfig:
/// systemProviderId: DATASTAX
/// scopes: []
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// AccountConnector can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/accountConnectors/{{account_connector_id}}`
///
/// * `{{project}}/{{location}}/{{account_connector_id}}`
///
/// * `{{location}}/{{account_connector_id}}`
///
/// When using the `pulumi import` command, AccountConnector can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:developerconnect/accountConnector:AccountConnector default projects/{{project}}/locations/{{location}}/accountConnectors/{{account_connector_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:developerconnect/accountConnector:AccountConnector default {{project}}/{{location}}/{{account_connector_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:developerconnect/accountConnector:AccountConnector default {{location}}/{{account_connector_id}}
/// ```
class AccountConnector extends CustomResource {
  /// Required. The ID to use for the AccountConnector, which will become the final
  /// component of the AccountConnector's resource name. Its format should adhere
  /// to https://google.aip.dev/122#resource-id-segments Names must be unique
  /// per-project per-location.
  late final Output<String> accountConnectorId;

  /// Optional. Allows users to store small amounts of arbitrary data.
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveAnnotations`" pulumi-lang-dotnet="`EffectiveAnnotations`" pulumi-lang-go="`effectiveAnnotations`" pulumi-lang-python="`effective_annotations`" pulumi-lang-yaml="`effectiveAnnotations`" pulumi-lang-java="`effectiveAnnotations`">`effective_annotations`</span> for all of the annotations present on the resource.
  late final Output<Map<String, String>?> annotations;

  /// Output only. The timestamp when the userConnection was created.
  late final Output<String> createTime;
  late final Output<Map<String, String>> effectiveAnnotations;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// Optional. Labels as key value pairs
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// The location of the resource.
  late final Output<String> location;

  /// Identifier. The resource name of the userConnection, in the format
  /// `projects/{project}/locations/{location}/accountConnectors/{account_connector_id}`.
  late final Output<String> name;

  /// Output only. Start OAuth flow by clicking on this URL.
  late final Output<String> oauthStartUri;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// ProviderOAuthConfig is the OAuth config for a provider.
  /// Structure is documented below.
  late final Output<AccountConnectorProviderOauthConfig?> providerOauthConfig;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// Output only. The timestamp when the userConnection was updated.
  late final Output<String> updateTime;

  AccountConnector(
    String name, {
    AccountConnectorArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:developerconnect/accountConnector:AccountConnector',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.accountConnectorId = registerOutput<String>('accountConnectorId');
    this.annotations = registerOutput<Map<String, String>?>('annotations');
    this.createTime = registerOutput<String>('createTime');
    this.effectiveAnnotations =
        registerOutput<Map<String, String>>('effectiveAnnotations');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.oauthStartUri = registerOutput<String>('oauthStartUri');
    this.project = registerOutput<String>('project');
    this.providerOauthConfig =
        registerOutput<AccountConnectorProviderOauthConfig?>(
            'providerOauthConfig');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
