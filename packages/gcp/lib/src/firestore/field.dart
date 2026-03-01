import 'package:pulumi/pulumi.dart' as pulumi;
import 'field_args.dart';
import 'field_index_config.dart';
import 'field_ttl_config.dart';

/// Represents a single field in the database.
/// Fields are grouped by their "Collection Group", which represent all collections
/// in the database with the same id.
///
///
/// To get more information about Field, see:
///
/// * [API documentation](https://cloud.google.com/firestore/docs/reference/rest/v1/projects.databases.collectionGroups.fields)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/firestore/docs/query-data/indexing)
///
/// > **Warning:** This resource creates a Firestore Single Field override on a project that
/// already has a Firestore database. If you haven't already created it, you may
/// create a `gcp.firestore.Database` resource with `location_id` set to your
/// chosen location.
///
/// ## Example Usage
///
/// ### Firestore Field Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const database = new gcp.firestore.Database("database", {
///     project: "my-project-name",
///     name: "database-id",
///     locationId: "nam5",
///     type: "FIRESTORE_NATIVE",
///     deleteProtectionState: "DELETE_PROTECTION_ENABLED",
///     deletionPolicy: "DELETE",
/// });
/// const basic = new gcp.firestore.Field("basic", {
///     project: "my-project-name",
///     database: database.name,
///     collection: "chatrooms__59033",
///     field: "basic",
///     indexConfig: {
///         indexes: [
///             {
///                 order: "ASCENDING",
///                 queryScope: "COLLECTION_GROUP",
///             },
///             {
///                 arrayConfig: "CONTAINS",
///             },
///         ],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// database = gcp.firestore.Database("database",
///     project="my-project-name",
///     name="database-id",
///     location_id="nam5",
///     type="FIRESTORE_NATIVE",
///     delete_protection_state="DELETE_PROTECTION_ENABLED",
///     deletion_policy="DELETE")
/// basic = gcp.firestore.Field("basic",
///     project="my-project-name",
///     database=database.name,
///     collection="chatrooms__59033",
///     field="basic",
///     index_config={
///         "indexes": [
///             {
///                 "order": "ASCENDING",
///                 "query_scope": "COLLECTION_GROUP",
///             },
///             {
///                 "array_config": "CONTAINS",
///             },
///         ],
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var database = new Gcp.Firestore.Database("database", new()
///     {
///         Project = "my-project-name",
///         Name = "database-id",
///         LocationId = "nam5",
///         Type = "FIRESTORE_NATIVE",
///         DeleteProtectionState = "DELETE_PROTECTION_ENABLED",
///         DeletionPolicy = "DELETE",
///     });
///
///     var basic = new Gcp.Firestore.Field("basic", new()
///     {
///         Project = "my-project-name",
///         Database = database.Name,
///         Collection = "chatrooms__59033",
///         FieldId = "basic",
///         IndexConfig = new Gcp.Firestore.Inputs.FieldIndexConfigArgs
///         {
///             Indexes = new[]
///             {
///                 new Gcp.Firestore.Inputs.FieldIndexConfigIndexArgs
///                 {
///                     Order = "ASCENDING",
///                     QueryScope = "COLLECTION_GROUP",
///                 },
///                 new Gcp.Firestore.Inputs.FieldIndexConfigIndexArgs
///                 {
///                     ArrayConfig = "CONTAINS",
///                 },
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/firestore"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		database, err := firestore.NewDatabase(ctx, "database", &firestore.DatabaseArgs{
/// 			Project:               pulumi.String("my-project-name"),
/// 			Name:                  pulumi.String("database-id"),
/// 			LocationId:            pulumi.String("nam5"),
/// 			Type:                  pulumi.String("FIRESTORE_NATIVE"),
/// 			DeleteProtectionState: pulumi.String("DELETE_PROTECTION_ENABLED"),
/// 			DeletionPolicy:        pulumi.String("DELETE"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = firestore.NewField(ctx, "basic", &firestore.FieldArgs{
/// 			Project:    pulumi.String("my-project-name"),
/// 			Database:   database.Name,
/// 			Collection: pulumi.String("chatrooms__59033"),
/// 			Field:      pulumi.String("basic"),
/// 			IndexConfig: &firestore.FieldIndexConfigArgs{
/// 				Indexes: firestore.FieldIndexConfigIndexArray{
/// 					&firestore.FieldIndexConfigIndexArgs{
/// 						Order:      pulumi.String("ASCENDING"),
/// 						QueryScope: pulumi.String("COLLECTION_GROUP"),
/// 					},
/// 					&firestore.FieldIndexConfigIndexArgs{
/// 						ArrayConfig: pulumi.String("CONTAINS"),
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.firestore.Database;
/// import com.pulumi.gcp.firestore.DatabaseArgs;
/// import com.pulumi.gcp.firestore.Field;
/// import com.pulumi.gcp.firestore.FieldArgs;
/// import com.pulumi.gcp.firestore.inputs.FieldIndexConfigArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///         var database = new Database("database", DatabaseArgs.builder()
///             .project("my-project-name")
///             .name("database-id")
///             .locationId("nam5")
///             .type("FIRESTORE_NATIVE")
///             .deleteProtectionState("DELETE_PROTECTION_ENABLED")
///             .deletionPolicy("DELETE")
///             .build());
///
///         var basic = new Field("basic", FieldArgs.builder()
///             .project("my-project-name")
///             .database(database.name())
///             .collection("chatrooms__59033")
///             .field("basic")
///             .indexConfig(FieldIndexConfigArgs.builder()
///                 .indexes(
///                     FieldIndexConfigIndexArgs.builder()
///                         .order("ASCENDING")
///                         .queryScope("COLLECTION_GROUP")
///                         .build(),
///                     FieldIndexConfigIndexArgs.builder()
///                         .arrayConfig("CONTAINS")
///                         .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   database:
///     type: gcp:firestore:Database
///     properties:
///       project: my-project-name
///       name: database-id
///       locationId: nam5
///       type: FIRESTORE_NATIVE
///       deleteProtectionState: DELETE_PROTECTION_ENABLED
///       deletionPolicy: DELETE
///   basic:
///     type: gcp:firestore:Field
///     properties:
///       project: my-project-name
///       database: ${database.name}
///       collection: chatrooms__59033
///       field: basic
///       indexConfig:
///         indexes:
///           - order: ASCENDING
///             queryScope: COLLECTION_GROUP
///           - arrayConfig: CONTAINS
/// ```
///
/// ### Firestore Field Timestamp
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const database = new gcp.firestore.Database("database", {
///     project: "my-project-name",
///     name: "database-id",
///     locationId: "nam5",
///     type: "FIRESTORE_NATIVE",
///     deleteProtectionState: "DELETE_PROTECTION_ENABLED",
///     deletionPolicy: "DELETE",
/// });
/// const timestamp = new gcp.firestore.Field("timestamp", {
///     project: "my-project-name",
///     database: database.name,
///     collection: "chatrooms",
///     field: "timestamp",
///     ttlConfig: {},
///     indexConfig: {},
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// database = gcp.firestore.Database("database",
///     project="my-project-name",
///     name="database-id",
///     location_id="nam5",
///     type="FIRESTORE_NATIVE",
///     delete_protection_state="DELETE_PROTECTION_ENABLED",
///     deletion_policy="DELETE")
/// timestamp = gcp.firestore.Field("timestamp",
///     project="my-project-name",
///     database=database.name,
///     collection="chatrooms",
///     field="timestamp",
///     ttl_config={},
///     index_config={})
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var database = new Gcp.Firestore.Database("database", new()
///     {
///         Project = "my-project-name",
///         Name = "database-id",
///         LocationId = "nam5",
///         Type = "FIRESTORE_NATIVE",
///         DeleteProtectionState = "DELETE_PROTECTION_ENABLED",
///         DeletionPolicy = "DELETE",
///     });
///
///     var timestamp = new Gcp.Firestore.Field("timestamp", new()
///     {
///         Project = "my-project-name",
///         Database = database.Name,
///         Collection = "chatrooms",
///         FieldId = "timestamp",
///         TtlConfig = null,
///         IndexConfig = null,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/firestore"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		database, err := firestore.NewDatabase(ctx, "database", &firestore.DatabaseArgs{
/// 			Project:               pulumi.String("my-project-name"),
/// 			Name:                  pulumi.String("database-id"),
/// 			LocationId:            pulumi.String("nam5"),
/// 			Type:                  pulumi.String("FIRESTORE_NATIVE"),
/// 			DeleteProtectionState: pulumi.String("DELETE_PROTECTION_ENABLED"),
/// 			DeletionPolicy:        pulumi.String("DELETE"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = firestore.NewField(ctx, "timestamp", &firestore.FieldArgs{
/// 			Project:     pulumi.String("my-project-name"),
/// 			Database:    database.Name,
/// 			Collection:  pulumi.String("chatrooms"),
/// 			Field:       pulumi.String("timestamp"),
/// 			TtlConfig:   &firestore.FieldTtlConfigArgs{},
/// 			IndexConfig: &firestore.FieldIndexConfigArgs{},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.firestore.Database;
/// import com.pulumi.gcp.firestore.DatabaseArgs;
/// import com.pulumi.gcp.firestore.Field;
/// import com.pulumi.gcp.firestore.FieldArgs;
/// import com.pulumi.gcp.firestore.inputs.FieldTtlConfigArgs;
/// import com.pulumi.gcp.firestore.inputs.FieldIndexConfigArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///         var database = new Database("database", DatabaseArgs.builder()
///             .project("my-project-name")
///             .name("database-id")
///             .locationId("nam5")
///             .type("FIRESTORE_NATIVE")
///             .deleteProtectionState("DELETE_PROTECTION_ENABLED")
///             .deletionPolicy("DELETE")
///             .build());
///
///         var timestamp = new Field("timestamp", FieldArgs.builder()
///             .project("my-project-name")
///             .database(database.name())
///             .collection("chatrooms")
///             .field("timestamp")
///             .ttlConfig(FieldTtlConfigArgs.builder()
///                 .build())
///             .indexConfig(FieldIndexConfigArgs.builder()
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   database:
///     type: gcp:firestore:Database
///     properties:
///       project: my-project-name
///       name: database-id
///       locationId: nam5
///       type: FIRESTORE_NATIVE
///       deleteProtectionState: DELETE_PROTECTION_ENABLED
///       deletionPolicy: DELETE
///   timestamp:
///     type: gcp:firestore:Field
///     properties:
///       project: my-project-name
///       database: ${database.name}
///       collection: chatrooms
///       field: timestamp
///       ttlConfig: {}
///       indexConfig: {}
/// ```
///
/// ### Firestore Field Match Override
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const database = new gcp.firestore.Database("database", {
///     project: "my-project-name",
///     name: "database-id",
///     locationId: "nam5",
///     type: "FIRESTORE_NATIVE",
///     deleteProtectionState: "DELETE_PROTECTION_ENABLED",
///     deletionPolicy: "DELETE",
/// });
/// const matchOverride = new gcp.firestore.Field("match_override", {
///     project: "my-project-name",
///     database: database.name,
///     collection: "chatrooms__32081",
///     field: "field_with_same_configuration_as_ancestor",
///     indexConfig: {
///         indexes: [
///             {
///                 order: "ASCENDING",
///             },
///             {
///                 order: "DESCENDING",
///             },
///             {
///                 arrayConfig: "CONTAINS",
///             },
///         ],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// database = gcp.firestore.Database("database",
///     project="my-project-name",
///     name="database-id",
///     location_id="nam5",
///     type="FIRESTORE_NATIVE",
///     delete_protection_state="DELETE_PROTECTION_ENABLED",
///     deletion_policy="DELETE")
/// match_override = gcp.firestore.Field("match_override",
///     project="my-project-name",
///     database=database.name,
///     collection="chatrooms__32081",
///     field="field_with_same_configuration_as_ancestor",
///     index_config={
///         "indexes": [
///             {
///                 "order": "ASCENDING",
///             },
///             {
///                 "order": "DESCENDING",
///             },
///             {
///                 "array_config": "CONTAINS",
///             },
///         ],
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var database = new Gcp.Firestore.Database("database", new()
///     {
///         Project = "my-project-name",
///         Name = "database-id",
///         LocationId = "nam5",
///         Type = "FIRESTORE_NATIVE",
///         DeleteProtectionState = "DELETE_PROTECTION_ENABLED",
///         DeletionPolicy = "DELETE",
///     });
///
///     var matchOverride = new Gcp.Firestore.Field("match_override", new()
///     {
///         Project = "my-project-name",
///         Database = database.Name,
///         Collection = "chatrooms__32081",
///         FieldId = "field_with_same_configuration_as_ancestor",
///         IndexConfig = new Gcp.Firestore.Inputs.FieldIndexConfigArgs
///         {
///             Indexes = new[]
///             {
///                 new Gcp.Firestore.Inputs.FieldIndexConfigIndexArgs
///                 {
///                     Order = "ASCENDING",
///                 },
///                 new Gcp.Firestore.Inputs.FieldIndexConfigIndexArgs
///                 {
///                     Order = "DESCENDING",
///                 },
///                 new Gcp.Firestore.Inputs.FieldIndexConfigIndexArgs
///                 {
///                     ArrayConfig = "CONTAINS",
///                 },
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/firestore"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		database, err := firestore.NewDatabase(ctx, "database", &firestore.DatabaseArgs{
/// 			Project:               pulumi.String("my-project-name"),
/// 			Name:                  pulumi.String("database-id"),
/// 			LocationId:            pulumi.String("nam5"),
/// 			Type:                  pulumi.String("FIRESTORE_NATIVE"),
/// 			DeleteProtectionState: pulumi.String("DELETE_PROTECTION_ENABLED"),
/// 			DeletionPolicy:        pulumi.String("DELETE"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = firestore.NewField(ctx, "match_override", &firestore.FieldArgs{
/// 			Project:    pulumi.String("my-project-name"),
/// 			Database:   database.Name,
/// 			Collection: pulumi.String("chatrooms__32081"),
/// 			Field:      pulumi.String("field_with_same_configuration_as_ancestor"),
/// 			IndexConfig: &firestore.FieldIndexConfigArgs{
/// 				Indexes: firestore.FieldIndexConfigIndexArray{
/// 					&firestore.FieldIndexConfigIndexArgs{
/// 						Order: pulumi.String("ASCENDING"),
/// 					},
/// 					&firestore.FieldIndexConfigIndexArgs{
/// 						Order: pulumi.String("DESCENDING"),
/// 					},
/// 					&firestore.FieldIndexConfigIndexArgs{
/// 						ArrayConfig: pulumi.String("CONTAINS"),
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.firestore.Database;
/// import com.pulumi.gcp.firestore.DatabaseArgs;
/// import com.pulumi.gcp.firestore.Field;
/// import com.pulumi.gcp.firestore.FieldArgs;
/// import com.pulumi.gcp.firestore.inputs.FieldIndexConfigArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///         var database = new Database("database", DatabaseArgs.builder()
///             .project("my-project-name")
///             .name("database-id")
///             .locationId("nam5")
///             .type("FIRESTORE_NATIVE")
///             .deleteProtectionState("DELETE_PROTECTION_ENABLED")
///             .deletionPolicy("DELETE")
///             .build());
///
///         var matchOverride = new Field("matchOverride", FieldArgs.builder()
///             .project("my-project-name")
///             .database(database.name())
///             .collection("chatrooms__32081")
///             .field("field_with_same_configuration_as_ancestor")
///             .indexConfig(FieldIndexConfigArgs.builder()
///                 .indexes(
///                     FieldIndexConfigIndexArgs.builder()
///                         .order("ASCENDING")
///                         .build(),
///                     FieldIndexConfigIndexArgs.builder()
///                         .order("DESCENDING")
///                         .build(),
///                     FieldIndexConfigIndexArgs.builder()
///                         .arrayConfig("CONTAINS")
///                         .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   database:
///     type: gcp:firestore:Database
///     properties:
///       project: my-project-name
///       name: database-id
///       locationId: nam5
///       type: FIRESTORE_NATIVE
///       deleteProtectionState: DELETE_PROTECTION_ENABLED
///       deletionPolicy: DELETE
///   matchOverride:
///     type: gcp:firestore:Field
///     name: match_override
///     properties:
///       project: my-project-name
///       database: ${database.name}
///       collection: chatrooms__32081
///       field: field_with_same_configuration_as_ancestor
///       indexConfig:
///         indexes:
///           - order: ASCENDING
///           - order: DESCENDING
///           - arrayConfig: CONTAINS
/// ```
///
/// ### Firestore Field Wildcard
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const database = new gcp.firestore.Database("database", {
///     project: "my-project-name",
///     name: "database-id",
///     locationId: "nam5",
///     type: "FIRESTORE_NATIVE",
///     deleteProtectionState: "DELETE_PROTECTION_ENABLED",
///     deletionPolicy: "DELETE",
/// });
/// const wildcard = new gcp.firestore.Field("wildcard", {
///     project: "my-project-name",
///     database: database.name,
///     collection: "chatrooms__10393",
///     field: "*",
///     indexConfig: {
///         indexes: [
///             {
///                 order: "ASCENDING",
///                 queryScope: "COLLECTION_GROUP",
///             },
///             {
///                 arrayConfig: "CONTAINS",
///             },
///         ],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// database = gcp.firestore.Database("database",
///     project="my-project-name",
///     name="database-id",
///     location_id="nam5",
///     type="FIRESTORE_NATIVE",
///     delete_protection_state="DELETE_PROTECTION_ENABLED",
///     deletion_policy="DELETE")
/// wildcard = gcp.firestore.Field("wildcard",
///     project="my-project-name",
///     database=database.name,
///     collection="chatrooms__10393",
///     field="*",
///     index_config={
///         "indexes": [
///             {
///                 "order": "ASCENDING",
///                 "query_scope": "COLLECTION_GROUP",
///             },
///             {
///                 "array_config": "CONTAINS",
///             },
///         ],
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var database = new Gcp.Firestore.Database("database", new()
///     {
///         Project = "my-project-name",
///         Name = "database-id",
///         LocationId = "nam5",
///         Type = "FIRESTORE_NATIVE",
///         DeleteProtectionState = "DELETE_PROTECTION_ENABLED",
///         DeletionPolicy = "DELETE",
///     });
///
///     var wildcard = new Gcp.Firestore.Field("wildcard", new()
///     {
///         Project = "my-project-name",
///         Database = database.Name,
///         Collection = "chatrooms__10393",
///         FieldId = "*",
///         IndexConfig = new Gcp.Firestore.Inputs.FieldIndexConfigArgs
///         {
///             Indexes = new[]
///             {
///                 new Gcp.Firestore.Inputs.FieldIndexConfigIndexArgs
///                 {
///                     Order = "ASCENDING",
///                     QueryScope = "COLLECTION_GROUP",
///                 },
///                 new Gcp.Firestore.Inputs.FieldIndexConfigIndexArgs
///                 {
///                     ArrayConfig = "CONTAINS",
///                 },
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/firestore"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		database, err := firestore.NewDatabase(ctx, "database", &firestore.DatabaseArgs{
/// 			Project:               pulumi.String("my-project-name"),
/// 			Name:                  pulumi.String("database-id"),
/// 			LocationId:            pulumi.String("nam5"),
/// 			Type:                  pulumi.String("FIRESTORE_NATIVE"),
/// 			DeleteProtectionState: pulumi.String("DELETE_PROTECTION_ENABLED"),
/// 			DeletionPolicy:        pulumi.String("DELETE"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = firestore.NewField(ctx, "wildcard", &firestore.FieldArgs{
/// 			Project:    pulumi.String("my-project-name"),
/// 			Database:   database.Name,
/// 			Collection: pulumi.String("chatrooms__10393"),
/// 			Field:      pulumi.String("*"),
/// 			IndexConfig: &firestore.FieldIndexConfigArgs{
/// 				Indexes: firestore.FieldIndexConfigIndexArray{
/// 					&firestore.FieldIndexConfigIndexArgs{
/// 						Order:      pulumi.String("ASCENDING"),
/// 						QueryScope: pulumi.String("COLLECTION_GROUP"),
/// 					},
/// 					&firestore.FieldIndexConfigIndexArgs{
/// 						ArrayConfig: pulumi.String("CONTAINS"),
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.firestore.Database;
/// import com.pulumi.gcp.firestore.DatabaseArgs;
/// import com.pulumi.gcp.firestore.Field;
/// import com.pulumi.gcp.firestore.FieldArgs;
/// import com.pulumi.gcp.firestore.inputs.FieldIndexConfigArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///         var database = new Database("database", DatabaseArgs.builder()
///             .project("my-project-name")
///             .name("database-id")
///             .locationId("nam5")
///             .type("FIRESTORE_NATIVE")
///             .deleteProtectionState("DELETE_PROTECTION_ENABLED")
///             .deletionPolicy("DELETE")
///             .build());
///
///         var wildcard = new Field("wildcard", FieldArgs.builder()
///             .project("my-project-name")
///             .database(database.name())
///             .collection("chatrooms__10393")
///             .field("*")
///             .indexConfig(FieldIndexConfigArgs.builder()
///                 .indexes(
///                     FieldIndexConfigIndexArgs.builder()
///                         .order("ASCENDING")
///                         .queryScope("COLLECTION_GROUP")
///                         .build(),
///                     FieldIndexConfigIndexArgs.builder()
///                         .arrayConfig("CONTAINS")
///                         .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   database:
///     type: gcp:firestore:Database
///     properties:
///       project: my-project-name
///       name: database-id
///       locationId: nam5
///       type: FIRESTORE_NATIVE
///       deleteProtectionState: DELETE_PROTECTION_ENABLED
///       deletionPolicy: DELETE
///   wildcard:
///     type: gcp:firestore:Field
///     properties:
///       project: my-project-name
///       database: ${database.name}
///       collection: chatrooms__10393
///       field: '*'
///       indexConfig:
///         indexes:
///           - order: ASCENDING
///             queryScope: COLLECTION_GROUP
///           - arrayConfig: CONTAINS
/// ```
///
///
/// ## Import
///
/// Field can be imported using any of these accepted formats:
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, Field can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:firestore/field:Field default {{name}}
/// ```
class Field extends pulumi.CustomResource {
  /// The id of the collection group to configure.
  late final pulumi.Output<String> collection;

  /// The Firestore database id. Defaults to `"(default)"`.
  late final pulumi.Output<String?> database;

  /// The id of the field to configure.
  late final pulumi.Output<String> field;

  /// The single field index configuration for this field.
  /// Creating an index configuration for this field will override any inherited configuration with the
  /// indexes specified. Configuring the index configuration with an empty block disables all indexes on
  /// the field.
  /// Structure is documented below.
  late final pulumi.Output<FieldIndexConfig?> indexConfig;

  /// The name of this field. Format:
  /// `projects/{{project}}/databases/{{database}}/collectionGroups/{{collection}}/fields/{{field}}`
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The TTL configuration for this Field. If set to an empty block (i.e. `ttl_config {}`), a TTL policy is configured based on the field. If unset, a TTL policy is not configured (or will be disabled upon updating the resource).
  /// Structure is documented below.
  late final pulumi.Output<FieldTtlConfig?> ttlConfig;

  /// Creates a new [Field].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Field]. {@macro pulumi_firestore_field_field_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Field(String name, {FieldArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'gcp:firestore/field:Field',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    this.collection = registerOutput<String>('collection');
    this.database = registerOutput<String?>('database');
    this.field = registerOutput<String>('field');
    this.indexConfig = registerOutput<FieldIndexConfig?>('indexConfig');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.ttlConfig = registerOutput<FieldTtlConfig?>('ttlConfig');
  }
}
